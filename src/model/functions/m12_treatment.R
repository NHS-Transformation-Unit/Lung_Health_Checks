m12_treat_groups <- function(input_df, dna_rate, rebook_rate, diagnostic_rate, incidental_rate, nodule_rate, follow_up_rate, 
                                 cancer_rate){
  
  ### Simulate DNA and Rebooking for non-excluded patients
  m12_dna_df <- input_df %>%
    mutate(m12_dna_prob = runif(n()),
           m12_dna = case_when(m12_dna_prob < dna_rate ~ 1,
                              TRUE ~ 0),
           m12_rebook_prob = runif(n()),
           m12_rebook = case_when(m12_dna == 0 ~ "Attended",
                                  m12_rebook_prob < rebook_rate ~ "Rebook",
                                 TRUE ~ "Opt-out"))
  
  m12_dna_opt_out <- m12_dna_df %>%
    filter(m12_rebook == "Opt-out")
  
  ### Aggregate Attendance, DNA and Rebooked
  m12_dna_agg_df <- m12_dna_df %>%
    group_by(Trial, m12_rebook) %>%
    summarise("Total" = n())
  
  ### Simulate the m12 treatment outcomes
  m12_treat_outcome_df <- m12_dna_df %>%
    filter(m12_rebook != "Opt-out") %>%
    mutate(m12_treat_outcome_prob = runif(n()),
           m12_treat_outcome = case_when(m12_treat_outcome_prob < diagnostic_rate ~ "Diagnostics",
                                         m12_treat_outcome_prob < diagnostic_rate + incidental_rate ~ "Incidental",
                                         m12_treat_outcome_prob < diagnostic_rate + incidental_rate + nodule_rate ~ "Nodule FU",
                                          TRUE ~ "24M_FU"))
  
  ### Aggregate m12 outcomes
  m12_treat_outcome_agg_df <- m12_treat_outcome_df %>%
    group_by(Trial, m12_treat_outcome) %>%
    summarise("Total" = n())
  
  ### Additional Diagnostics Output
  m12_treat_diags_df <- m12_treat_outcome_df %>%
    filter(m12_treat_outcome == "Diagnostics")
  
  ### Incidental Finding Output
  m12_incidental_df <- m12_treat_outcome_df %>%
    filter(m12_treat_outcome == "Incidental")
  
  ### 24-month follow-up Output
  m12_treat_24m_fu_df <- m12_treat_outcome_df %>%
    filter(m12_treat_outcome == "24M_FU")
  
  ### Simulate cancer diagnosis
  m12_treat_diags_outcome_df <- m12_treat_diags_df %>%
    mutate(cancer_outcome_prob = runif(n()),
           cancer_outcome = case_when(cancer_outcome_prob < cancer_rate ~ "Cancer",
                                      TRUE ~ "Non-Malignant"))
  
  ### Aggregate cancer diagnosis
  m12_treat_diags_outcome_agg_df <- m12_treat_diags_outcome_df %>%
    group_by(Trial, cancer_outcome) %>%
    summarise("Total" = n())
  
  ### Output Cancer Dataframe
  m12_treat_cancer_output_df <- m12_treat_diags_outcome_df %>%
    filter(cancer_outcome == "Cancer")
  
  return(list(m12_dna_agg_df, m12_treat_outcome_agg_df, m12_treat_diags_df, m12_treat_24m_fu_df, m12_treat_diags_outcome_agg_df, m12_treat_cancer_output_df, m12_dna_opt_out, m12_incidental_df))
  
}

m12_treatment_modalities <- function(input_df, surgery_rate, surg_ac_rate, sabr_rate, xrt_rate,
                                         chemrad_rate, chemo_rate, nadj_imm_rate){
  
  ### Simulate treatment modalities
  m12_treat_modalities_df <- input_df %>%
    mutate(modality_prob = runif(n()),
           modality = case_when(modality_prob < surgery_rate ~ "Surgery",
                                modality_prob < surgery_rate + surg_ac_rate ~ "Surgery_Adjuvant_Chemotherapy",
                                modality_prob < surgery_rate + surg_ac_rate + sabr_rate ~ "SABR",
                                modality_prob < surgery_rate + surg_ac_rate + sabr_rate + xrt_rate ~ "XRT",
                                modality_prob < surgery_rate + surg_ac_rate + sabr_rate + xrt_rate + chemrad_rate ~ "Chemoradiotherapy",
                                modality_prob < surgery_rate + surg_ac_rate + sabr_rate + xrt_rate + chemrad_rate + chemo_rate ~ "Chemotherapy",
                                modality_prob < surgery_rate + surg_ac_rate + sabr_rate + xrt_rate + chemrad_rate + chemo_rate + nadj_imm_rate ~ "Neoadjuvant_Immunotherapy",
                                TRUE ~ "Best_Supportive_Care"))
  
  ### Aggregate treatment modalities
  m12_treat_modalities_agg_df <- m12_treat_modalities_df %>%
    group_by(Trial, modality) %>%
    summarise("Total" = n())
  
}

m12_incidental_findings <- function(input_df, cc_rate, emp_rate, ila_rate, meda_rate, avc_rate, 
                                   bro_rate, rbr_rate, taa_rate, ost_rate, lsl_rate, ren_rate, 
                                   adr_rate, oca_rate, ple_rate, sbl_rate, con_rate, fra_rate, 
                                   thy_rate, aaa_rate, tub_rate){
  
  ### Simulate incidental findings
  m12_incidental_findings_df <- input_df %>%
    mutate(cc_finding_prob = runif(n()),
           cc_finding = case_when(cc_finding_prob < cc_rate ~ "Coronary Calcification",
                                  TRUE ~ "None"),
           emp_finding_prob = runif(n()),
           emp_finding = case_when(emp_finding_prob < emp_rate ~ "Emphysema",
                                   TRUE ~ "None"),
           ila_finding_prob = runif(n()),
           ila_finding = case_when(ila_finding_prob < ila_rate ~ "Interstitial Lung Abnormalities",
                                   TRUE ~ "None"),
           meda_finding_prob = runif(n()),
           meda_finding = case_when(meda_finding_prob < meda_rate ~ "Mediastinal Mass",
                                    TRUE ~ "None"),
           avc_finding_prob = runif(n()),
           avc_finding = case_when(avc_finding_prob < avc_rate ~ "Aortic Valve Calcification",
                                   TRUE ~ "None"),
           bro_finding_prob = runif(n()),
           bro_finding = case_when(bro_finding_prob < bro_rate ~ "Bronchiectasis",
                                   TRUE ~ "None"),
           rbr_finding_prob = runif(n()),
           rbr_finding = case_when(rbr_finding_prob < rbr_rate ~ "Respiratory Bronchiolitis",
                                   TRUE ~ "None"),
           taa_finding_prob = runif(n()),
           taa_finding = case_when(taa_finding_prob < taa_rate ~ "Thoracic Aortic Aneurysm",
                                   TRUE ~ "None"),
           ost_finding_prob = runif(n()),
           ost_finding = case_when(ost_finding_prob < ost_rate ~ "Osteoporosis",
                                   TRUE ~ "None"),
           lsl_finding_prob = runif(n()),
           lsl_finding = case_when(lsl_finding_prob < lsl_rate ~ "Liver of Spleen Lesions",
                                   TRUE ~ "None"),
           ren_finding_prob = runif(n()),
           ren_finding = case_when(ren_finding_prob < ren_rate ~ "Renal Lesions",
                                   TRUE ~ "None"),
           adr_finding_prob = runif(n()),
           adr_finding = case_when(adr_finding_prob < adr_rate ~ "Adrenal Lesions",
                                   TRUE ~ "None"),
           oca_finding_prob = runif(n()),
           oca_finding = case_when(oca_finding_prob < oca_rate ~ "Other Cancers",
                                   TRUE ~ "None"),
           ple_finding_prob = runif(n()),
           ple_finding = case_when(ple_finding_prob < ple_rate ~ "Pleural Affusions/Thickening",
                                   TRUE ~ "None"),
           sbl_finding_prob = runif(n()),
           sbl_finding = case_when(sbl_finding_prob < sbl_rate ~ "Suspicious Breast Lesion",
                                   TRUE ~ "None"),
           con_finding_prob = runif(n()),
           con_finding = case_when(con_finding_prob < con_rate ~ "Consolidation",
                                   TRUE ~ "None"),
           fra_finding_prob = runif(n()),
           fra_finding = case_when(fra_finding_prob < fra_rate ~ "Fractures (with no trauma history)",
                                   TRUE ~ "None"),
           thy_finding_prob = runif(n()),
           thy_finding = case_when(thy_finding_prob < thy_rate ~ "Thyroid Lesion",
                                   TRUE ~ "None"),
           aaa_finding_prob = runif(n()),
           aaa_finding = case_when(aaa_finding_prob < aaa_rate ~ "Abdominal Aortic Aneurysm",
                                   TRUE ~ "None"),
           tub_finding_prob = runif(n()),
           tub_finding = case_when(tub_finding_prob < tub_rate ~ "Tubercolosis",
                                   TRUE ~ "None"),
           combined_findings = str_c(cc_finding, emp_finding, ila_finding, meda_finding, avc_finding, bro_finding, 
                                     rbr_finding, taa_finding, ost_finding, lsl_finding, ren_finding, adr_finding, 
                                     oca_finding, ple_finding, sbl_finding, con_finding, fra_finding, thy_finding, 
                                     aaa_finding, tub_finding, sep = ", ", collapse = NULL) %>%
             str_replace_all(", None", "") %>% 
             str_replace_all("None, ", "") %>% 
             str_replace_all("^None$", ""),
           combined_findings = if_else(combined_findings == "", "Coronary Calcification", combined_findings))
  
  ### Aggregate incidental findings
  m12_incidental_findings_agg_df <- m12_incidental_findings_df %>%
    group_by(Trial, combined_findings) %>%
    summarise("Total" = n())
  
}
