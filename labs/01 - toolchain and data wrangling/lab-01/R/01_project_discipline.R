# ==============================================================================
# RStudio Discipline
# ==============================================================================
library(tidyverse)

# 1. Data Generation -----------------------------------------------------------
set.seed(0)
n <- 30

df <- tibble(
  subject_id    = 1:n,
  group         = factor(sample(c("Control", "Treatment_A", "Treatment_B"), 
                                n, 
                                replace = TRUE),
                         levels = c("Control", "Treatment_A", "Treatment_B")),
  reaction_time = round(c(rnorm(n/3, 450, 40), 
                          rnorm(n/3, 380, 35), 
                          rnorm(n/3, 320, 30)), 1)
)

# 2. Attribute inspection ------------------------------------------------------

view(df)
glimpse(df)
attributes(df$group) # displays factor levels metadata

# 3. Generate and save plot ----------------------------------------------------

p <- ggplot(df, aes(x = group, y = reaction_time, fill = group)) +
  geom_boxplot(alpha = 0.6, outlier.shape = NA) +
  geom_jitter(width = 0.15, size = 2, alpha = 0.8) +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Reaction Time by Experimental Arm",
    x = "Condition",
    y = "Latency (ms)"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

plot(p) # inspect plot

ggsave(here::here("output", "reaction_plot.png"), # use relative paths, avoid setwd()!
       plot = p, width = 6, height = 3.5, dpi = 300) 

plot(p)