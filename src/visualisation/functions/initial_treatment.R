
# Positive CT Outcomes ----------------------------------------------------

init_treat_pos_outcomes_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial, init_treat_outcome_clean) %>%
    summarise(Total = sum(Total, na.rm = TRUE))
  
  init_treat_pos_outcomes_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    facet_wrap(~init_treat_outcome_clean, scales = "free_x") +
    labs(x = "Number of Patients",
         y = "Number of Trials",
         title = "Histogram of in year Positive CT Outcomes",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}


# Diagnostic Activity -----------------------------------------------------

init_treat_diags_chart_visual <- function(input_df, fill_hex, sub_label){
  
  init_treat_diags_chart <- ggplot(input_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 10) +
    facet_wrap(~modality_clean, scales = "free_x") +
    labs(x = "Number of Patients",
         y = "Number of Trials",
         title = "Histogram of in year Additional Diagnostics",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}


# Confirmed Malignancy ----------------------------------------------------

init_treat_malig_chart_visual <- function(input_df, fill_hex, sub_label){
  
  init_treat_malig_chart <- ggplot(input_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    facet_wrap(~cancer_outcome, scales = "free_x") +
    labs(x = "Number of Patients",
         y = "Number of Trials",
         title = "Histogram of in year Confirmed Malignancy",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}


# Treatment Modalities ----------------------------------------------------

init_treat_mods_chart_visual <- function(input_df, fill_hex, sub_label){
  
  init_treat_diags_chart <- ggplot(input_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 10) +
    facet_wrap(~modality_clean, scales = "free_x") +
    labs(x = "Number of Patients",
         y = "Number of Trials",
         title = "Histogram of in year Treatment Modality Activity",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}

