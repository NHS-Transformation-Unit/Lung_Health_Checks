
# tu_theme_standard -------------------------------------------------------

theme_tu_standard <- function(hex_col, hex_text = "#ffffff") {
  theme(text = element_text(family = "Franklin Gothic Book"),
        strip.background = element_rect(fill = hex_col),
        strip.text = element_text(colour = hex_text, size = 10),
        axis.text = element_text(size = 10),
        axis.text.x = element_text(angle = 45, hjust = 1),
        axis.title = element_text(size = 11),
        plot.title = element_text(size = 16, color = hex_col),
        plot.subtitle = element_text(size = 12),
        legend.position = "bottom",
        legend.text = element_text(size = 8)
  )
  
}

# TU Theme White Background -----------------------------------------------

theme_tu_white <- function(hex_col, hex_text = "#ffffff") {
  theme(text = element_text(family = "Franklin Gothic Book"),
        strip.background = element_rect(fill = hex_col),
        strip.text = element_text(colour = hex_text, size = 10),
        axis.text = element_text(size = 10),
        axis.text.x = element_text(angle = 45, hjust = 1),
        axis.title = element_text(size = 11),
        plot.title = element_text(size = 16, color = hex_col),
        plot.subtitle = element_text(size = 12),
        panel.background = element_rect(fill = "#ffffff"),
        panel.grid.major.y = element_line(color = "#cecece", linewidth = 0.1),
        panel.grid.minor.y = element_blank(),
        axis.line = element_line(color = "#000000"),
        legend.position = "bottom",
        legend.text = element_text(size = 7.5)
  )
  
}

# TU Theme White Background multiple facets-----------------------------------------------

theme_tu_white_mf <- function(hex_col, hex_text = "#ffffff") {
  theme(text = element_text(family = "Franklin Gothic Book"),
        strip.background = element_rect(fill = hex_col),
        strip.text = element_text(colour = hex_text, size = 7),
        axis.text = element_text(size = 8),
        axis.text.x = element_text(angle = 45, hjust = 1),
        axis.title = element_text(size = 9),
        plot.title = element_text(size = 16, color = hex_col),
        plot.subtitle = element_text(size = 12),
        panel.background = element_rect(fill = "#ffffff"),
        panel.grid.major.y = element_line(color = "#cecece", linewidth = 0.1),
        panel.grid.minor.y = element_blank(),
        axis.line = element_line(color = "#000000"),
        legend.position = "bottom",
        legend.text = element_text(size = 8)
  )
  
}

# TU Theme White Background multiple facets-----------------------------------------------

theme_tu_white_bar_cf <- function(hex_col, hex_text = "#ffffff") {
  theme(text = element_text(family = "Franklin Gothic Book"),
        strip.background = element_rect(fill = hex_col),
        strip.text = element_text(colour = hex_text, size = 10),
        axis.text = element_text(size = 10),
        axis.text.x = element_text(angle = 45, hjust = 1),
        axis.title = element_text(size = 11),
        plot.title = element_text(size = 16, color = hex_col),
        plot.subtitle = element_text(size = 12),
        panel.background = element_rect(fill = "#ffffff"),
        panel.grid.major.x = element_line(color = "#cecece", linewidth = 0.1),
        panel.grid.minor.x = element_blank(),
        axis.line = element_line(color = "#000000"),
        legend.position = "bottom",
        legend.text = element_text(size = 8)
  )
  
}

# TU Theme White Background limited facets -----------------------------------------------

theme_tu_white_lf <- function(hex_col, hex_text = "#ffffff") {
  theme(text = element_text(family = "Franklin Gothic Book"),
        strip.background = element_rect(fill = hex_col),
        strip.text = element_text(colour = hex_text, size = 7.3),
        axis.text = element_text(size = 10),
        axis.text.x = element_text(angle = 45, hjust = 1),
        axis.title = element_text(size = 11),
        plot.title = element_text(size = 16, color = hex_col),
        plot.subtitle = element_text(size = 12),
        panel.background = element_rect(fill = "#ffffff"),
        panel.grid.major.y = element_line(color = "#cecece", linewidth = 0.1),
        panel.grid.minor.y = element_blank(),
        axis.line = element_line(color = "#000000"),
        legend.position = "bottom",
        legend.text = element_text(size = 8)
  )
  
}

# TU Theme White Background horizontal bar chart -----------------------------------------------

theme_tu_white_hbar <- function(hex_col, hex_text = "#ffffff") {
  theme(text = element_text(family = "Franklin Gothic Book"),
        strip.background = element_rect(fill = hex_col),
        strip.text = element_text(colour = hex_text, size = 10),
        axis.text = element_text(size = 10),
        axis.text.x = element_text(angle = 45, hjust = 1),
        axis.title = element_text(size = 11),
        plot.title = element_text(size = 16, color = hex_col),
        plot.subtitle = element_text(size = 12),
        panel.background = element_rect(fill = "#ffffff"),
        panel.grid.major.x = element_line(color = "#cecece", linewidth = 0.1),
        panel.grid.minor.x = element_blank(),
        axis.line = element_line(color = "#000000"),
        legend.position = "bottom",
        legend.text = element_text(size = 8)
  )
  
}

# selected_theme ----------------------------------------------------------

selected_theme <- theme_tu_white
