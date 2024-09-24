
# CT Activity ------------------------------------------------------------

ct_activity_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial) %>%
    summarise(Total = sum(Total, na.rm = TRUE))
  
  trial_df <- data.frame("Trial" = seq(1:trials))
  
  chart_df <- trial_df %>%
    left_join(chart_df, by = c("Trial")) %>%
    mutate(Total = replace_na(Total, 0))
  
  ct_activity_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    labs(x = "Number of CTs undertaken",
         y = "Number of Trials",
         title = "Histogram of in year CT scan Activity",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}

# CT Outcomes ------------------------------------------------------------

ct_outcomes_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial, ct_outcome) %>%
    summarise(Total = sum(Total, na.rm = TRUE)) %>%
    ungroup() %>%
    complete(Trial, ct_outcome, fill = list(Total = 0))
  
  ct_outcome_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    facet_wrap(~ct_outcome, scales = "free_x") +
    labs(x = "Number of CTs undertaken",
         y = "Number of Trials",
         title = "Histogram of in year CT scan Outcomes",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}


# CT Negative Follow-Ups --------------------------------------------------

ct_neg_ri_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial) %>%
    summarise(Total = sum(Total, na.rm = TRUE))
  
  trial_df <- data.frame("Trial" = seq(1:trials))
  
  chart_df <- trial_df %>%
    left_join(chart_df, by = c("Trial")) %>%
    mutate(Total = replace_na(Total, 0))
  
  ct_neg_ri_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    labs(x = "Number of CTs undertaken",
         y = "Number of Trials",
         title = "Histogram of in year Negative Scans requiring 24-month follow-up",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}


# CT Scan Opt-outs --------------------------------------------------------

ct_opt_out_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial) %>%
    summarise(Total = sum(Total, na.rm = TRUE))
  
  trial_df <- data.frame("Trial" = seq(1:trials))
  
  chart_df <- trial_df %>%
    left_join(chart_df, by = c("Trial")) %>%
    mutate(Total = replace_na(Total, 0))
  
  ct_opt_out_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    labs(x = "Number of patients",
         y = "Number of Trials",
         title = "Histogram of in year patients opting out at CT scan",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}


# CT Exclusions -----------------------------------------------------------

ct_ex_chart_visual <- function(input_df, fill_hex, sub_label){
  
  ct_ex_chart <- ggplot(input_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    labs(x = "Number of patients",
         y = "Number of Trials",
         title = "Histogram of in year CT scan exclusions",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}

