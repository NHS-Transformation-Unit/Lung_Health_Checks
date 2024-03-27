
# CT Scan Activity --------------------------------------------------------

m12_treat_ct_act_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial)%>%
    summarise(Total = sum(Total, na.rm = TRUE))
  
  trial_df <- data.frame("Trial" = seq(1:trials))
  
  chart_df <- trial_df %>%
    left_join(chart_df, by = c("Trial")) %>%
    mutate(Total = replace_na(Total, 0))
  
  m12_treat_ct_act_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    labs(x = "CT Scan Activity",
         y = "Number of Trials",
         title = "Histogram of in year 12 Month follow-up CT Activity",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}

# Positive CT Outcomes ----------------------------------------------------

m12_treat_pos_outcomes_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial, m12_treat_outcome_clean) %>%
    summarise(Total = sum(Total, na.rm = TRUE)) %>%
    ungroup() %>%
    complete(Trial, m12_treat_outcome_clean, fill = list(Total = 0))
  
  m12_treat_pos_outcomes_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 20) +
    facet_wrap(~m12_treat_outcome_clean, scales = "free_x") +
    labs(x = "Number of Patients",
         y = "Number of Trials",
         title = "Histogram of in year Positive CT Outcomes",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
}


# Diagnostic Activity -----------------------------------------------------

m12_treat_diags_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial, modality_clean) %>%
    summarise(Total = sum(Total, na.rm = TRUE)) %>%
    ungroup() %>%
    complete(Trial, modality_clean, fill = list(Total = 0))
  
  m12_treat_diags_chart <- ggplot(chart_df, aes(x = Total)) +
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

m12_treat_malig_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial, cancer_outcome) %>%
    summarise(Total = sum(Total, na.rm = TRUE)) %>%
    ungroup() %>%
    complete(Trial, cancer_outcome, fill = list(Total = 0))
  
  m12_treat_malig_chart <- ggplot(chart_df, aes(x = Total)) +
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

m12_treat_mods_chart_visual <- function(input_df, fill_hex, sub_label){
  
  chart_df <- input_df %>%
    group_by(Trial, modality_clean) %>%
    summarise(Total = sum(Total, na.rm = TRUE)) %>%
    ungroup() %>%
    complete(Trial, modality_clean, fill = list(Total = 0))
  
  m12_treat_diags_chart <- ggplot(chart_df, aes(x = Total)) +
    geom_histogram(fill = fill_hex, alpha = 0.5, color = "#000000", bins = 5) +
    facet_wrap(~modality_clean, scales = "free_x") +
    labs(x = "Number of Patients",
         y = "Number of Trials",
         title = "Histogram of in year Treatment Modality Activity",
         subtitle = sub_label,
         caption = "Model Output") +
    theme_tu_white(hex_col = "#407EC9")
  
  
}
