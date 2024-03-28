format_as_percentage <- function(x) {
  percent(x)
}

assumptions_pop_table <- assumptions_pop %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>% 
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

assumptions_lhc_table <- assumptions_lhc %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>%  
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

assumptions_ct_table <- assumptions_ct %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>%  
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

assumptions_initial_diag_table <- assumptions_initial_diag %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>%  
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

assumptions_initial_treat_table <- assumptions_initial_treat %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>%  
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

assumptions_m3_diag_table <- assumptions_m3_diag %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>%  
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

assumptions_m3_treat_table <- assumptions_m3_treat %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>%  
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

assumptions_m12_diag_table <- assumptions_m12_diag %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>%  
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

assumptions_m12_treat_table <- assumptions_m12_treat %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>%  
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

assumptions_m24_diag_table <- assumptions_m24_diag %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>%  
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")

assumptions_m24_treat_table <- assumptions_m24_treat %>%
  filter(Item_ID != "total_pop") %>%
  mutate_at(vars(4:8), format_as_percentage) %>%
  kable(format = "html", align = "lllrrrrr") %>%  
  kable_styling() %>%
  row_spec(0, background = "#407EC9", color = "white")
