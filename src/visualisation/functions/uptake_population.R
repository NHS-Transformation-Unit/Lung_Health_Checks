uptake_pop_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial) %>%
    summarise(Total = n())
  
  uptake_pop_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    labs(x = "Number of patients",
         y = "Number of Trials",
         title = "Histogram of in year health checks coverage",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
  
}
