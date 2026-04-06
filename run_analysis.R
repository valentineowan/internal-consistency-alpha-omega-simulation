# ============================================================
# TITLE: Analysis Script
# DESCRIPTION:
# Produces tables and figures from simulation data
# ============================================================

rm(list = ls())

library(dplyr)
library(ggplot2)

# ---------------------------
# LOAD DATA
# ---------------------------
results <- read.csv("results_raw.csv")

# ---------------------------
# SUMMARY
# ---------------------------
summary_clean <- results %>%
  group_by(N, J, Distribution, Response) %>%
  summarise(
    Alpha_Mean = mean(Alpha, na.rm = TRUE),
    Omega_Mean = mean(Omega, na.rm = TRUE),
    .groups = "drop"
  )

# ---------------------------
# SELECT CONDITIONS
# ---------------------------
selected_conditions <- summary_clean %>%
  filter(N %in% c(10, 50, 300, 1000, 5000),
         J %in% c(3, 10, 20))

# ---------------------------
# OUTPUT FOLDER
# ---------------------------
dir.create("outputs", showWarnings = FALSE)

# ---------------------------
# TABLE
# ---------------------------
write.csv(selected_conditions,
          "outputs/selected_results.csv",
          row.names = FALSE)

# ---------------------------
# FIGURES
# ---------------------------
theme_set(theme_minimal())

ggsave("outputs/figure1.png",
       ggplot(selected_conditions, aes(Response, Alpha_Mean)) +
         geom_boxplot() + facet_wrap(~J))

ggsave("outputs/figure2.png",
       ggplot(selected_conditions, aes(Alpha_Mean, Omega_Mean)) +
         geom_point() + geom_smooth(method="lm"))

print("Analysis completed")