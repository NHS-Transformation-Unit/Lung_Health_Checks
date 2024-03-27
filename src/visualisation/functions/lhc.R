
# LHC Activity ------------------------------------------------------------

lhc_activity_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial) %>%
    summarise(Total = sum(Total, na.rm = TRUE))
  
  trial_df <- data.frame("Trial" = seq(1:trials))
  
  chart_df <- trial_df %>%
    left_join(chart_df, by = c("Trial")) %>%
    mutate(Total = replace_na(Total, 0))
  
  lhc_activity_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    labs(x = "Number of LHCs undertaken",
         y = "Number of Trials",
         title = "Histogram of in year LHC Activity",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}

# LHC Outcomes ------------------------------------------------------------


lhc_outcomes_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial, lhc_outcome) %>%
    summarise(Total = sum(Total, na.rm = TRUE)) %>%
    ungroup() %>%
    complete(Trial, lhc_outcome, fill = list(Total = 0))
  
  lhc_outcome_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    facet_wrap(~lhc_outcome, scales = "free_x") +
    labs(x = "Number of LHCs undertaken",
         y = "Number of Trials",
         title = "Histogram of in year LHC Outcomes",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}

# LHC Opt-Outs ------------------------------------------------------------

lhc_opt_out_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial) %>%
    summarise(Total = sum(Total, na.rm = TRUE))
  
  trial_df <- data.frame("Trial" = seq(1:trials))
  
  chart_df <- trial_df %>%
    left_join(chart_df, by = c("Trial")) %>%
    mutate(Total = replace_na(Total, 0))
  
  lhc_opt_out_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    labs(x = "Number of patients",
         y = "Number of Trials",
         title = "Histogram of in year LHC Opt-Outs",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}


# LHC Negative Reinvites --------------------------------------------------

lhc_neg_ri_chart_visual <- function(input_df, fill_hex, sub_label){
  
  trial_df <- data.frame("Trial" = seq(1:trials))
  
  chart_df <- trial_df %>%
    left_join(input_df, by = c("Trial")) %>%
    mutate(Total = replace_na(Total, 0))
  
  lhc_neg_ri_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    labs(x = "Number of patients",
         y = "Number of Trials",
         title = "Histogram of in year Negative LHC patients to be re-invited",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}
