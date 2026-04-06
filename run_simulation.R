# ============================================================
# TITLE: Simulation Script
# DESCRIPTION:
# Generates simulation data for Alpha vs Omega study
# ============================================================

rm(list = ls())
set.seed(12345)

if (!require(psych)) install.packages("psych")
library(psych)

# ---------------------------
# PARAMETERS
# ---------------------------
TEST_MODE <- FALSE

if (TEST_MODE) {
  N_values <- c(30, 100)
  J_values <- c(3, 10)
  R <- 10
} else {
  N_values <- c(10, 30, 50, 100, 200, 300, 400, 500, 800,
                1000, 2000, 3000, 4000, 5000)
  J_values <- c(3, 10, 20)
  R <- 50
}

distributions <- c("normal", "skewed", "heavy")
response_types <- c("consistent", "acquiescent", "extreme", "inconsistent")

# ---------------------------
# FUNCTION
# ---------------------------
generate_theta <- function(N, dist) {
  if (dist == "normal") return(rnorm(N))
  if (dist == "skewed") {
    k <- 3
    Z <- rchisq(N, df = k)
    return((Z - k) / sqrt(2 * k))
  }
  if (dist == "heavy") {
    nu <- 3
    Z <- rt(N, df = nu)
    return(Z / sqrt(nu / (nu - 2)))
  }
}

# ---------------------------
# SIMULATION
# ---------------------------
results_list <- list()
counter <- 1

for (J in J_values) {
  for (N in N_values) {
    for (dist in distributions) {
      for (resp in response_types) {
        for (rep in 1:R) {

          theta <- generate_theta(N, dist)

          lambda <- runif(J, 0.6, 0.8)
          error_sd <- sqrt(1 - lambda^2)

          X <- sapply(1:J, function(j) {
            lambda[j] * theta + rnorm(N, 0, error_sd[j])
          })

          data <- as.data.frame(X)

          if (resp == "acquiescent") {
            data <- data + rnorm(N, 0.5, 0.2)
          }

          if (resp == "extreme") {
            data <- data * runif(N, 1.2, 1.8)
          }

          if (resp == "inconsistent") {
            data <- data + matrix(rnorm(N * J), nrow = N)
          }

          alpha_val <- tryCatch(psych::alpha(data)$total$raw_alpha, error = function(e) NA)

          fa_model <- tryCatch(psych::fa(data, nfactors = 1), error = function(e) NULL)

          omega_val <- if (!is.null(fa_model)) {
            loadings <- as.numeric(fa_model$loadings[,1])
            sum(loadings)^2 / (sum(loadings)^2 + sum(1 - loadings^2))
          } else NA

          results_list[[counter]] <- data.frame(
            N, J, Distribution = dist, Response = resp,
            Replication = rep,
            Alpha = alpha_val,
            Omega = omega_val
          )

          counter <- counter + 1
        }
      }
    }
  }
}

results <- do.call(rbind, results_list)

write.csv(results, "results_raw.csv", row.names = FALSE)

print("Simulation completed")