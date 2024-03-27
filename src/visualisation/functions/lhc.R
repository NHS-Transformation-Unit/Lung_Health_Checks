
# LHC Activity ------------------------------------------------------------

lhc_activity_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial) %>%
    summarise(Total = sum(Total, na.rm = TRUE))
  
  lhc_activity_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    labs(x = "Number of LHCs undertaken",
         y = "Number of Trials",
         title = "Histogram of in year LHC Activity",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}

