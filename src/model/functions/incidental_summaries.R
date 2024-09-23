incidental_summaries <- function(input_df){
  
  input_df %>%
    separate_rows(combined_findings, sep = ", ") %>%
    rename(finding = 2) %>%
    group_by(Trial, finding) %>%
    summarise(Total = sum(Total, na.rm = TRUE)) %>%
    group_by(finding) %>%
    summarise( percentile_10 = round(quantile(Total, probs = 0.1, na.rm = TRUE), 0),
               lower_quartile = round(quantile(Total, probs = 0.25, na.rm = TRUE), 0),
               median = round(median(Total, na.rm = TRUE), 0),
               upper_quartile = round(quantile(Total, probs = 0.75, na.rm = TRUE), 0),
               percentile_90 = round(quantile(Total, probs = 0.9, na.rm = TRUE), 0)
    )
  
}
