library(youdrawitR)
library(dplyr)
library(palmerpenguins)  # Load the penguins dataset

biscoe_penguins <- penguins |>  filter(island == "Biscoe")

# Use customDataGen to process the data
custom_data <- customDataGen(
  df = biscoe_penguins,
  xvar = "body_mass_g",
  yvar = "flipper_length_mm",
  regression_type = "linear",
  log_y = FALSE,
  conf_int = TRUE # conf_int can only be true for linear regression
)

drawr(custom_data, 
      title = "Flipper Length vs Body Mass", 
      subtitle = "For Penguins on Biscoe Island",
      x_lab = "Body Mass (g)",
      y_lab = "Flipper Length (mm)",
      conf_int = TRUE,
      show_finished = FALSE,
      drawn_line_color = "purple",
      free_draw = FALSE,
      draw_start = 4000,
      points = "partial",
      points_end = 4000
      )
