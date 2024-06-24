m3_treat_groups <- function(input_df, dna_rate, rebook_rate, diagnostic_rate, incidental_rate, follow_up_rate, 
                                 cancer_rate, m24_fu_rate){
  
  ### Simulate DNA and Rebooking for non-excluded patients
  m3_dna_df <- input_df %>%
    mutate(m3_dna_prob = runif(n()),
           m3_dna = case_when(m3_dna_prob < dna_rate ~ 1,
                              TRUE ~ 0),
           m3_rebook_prob = runif(n()),
           m3_rebook = case_when(m3_dna == 0 ~ "Attended",
                                 m3_rebook_prob < rebook_rate ~ "Rebook",
                                 TRUE ~ "Opt-out"))
  
  m3_dna_opt_out <- m3_dna_df %>%
    filter(m3_rebook == "Opt-out")
  
  ### Aggregate Attendance, DNA and Rebooked
  m3_dna_agg_df <- m3_dna_df %>%
    group_by(Trial, m3_rebook) %>%
    summarise("Total" = n())
  
  ### Simulate the m3 treatment outcomes
  m3_treat_outcome_df <- m3_dna_df %>%
    filter(m3_rebook != "Opt-out") %>%
    mutate(m3_treat_outcome_prob = runif(n()),
           m3_treat_outcome = case_when(m3_treat_outcome_prob < diagnostic_rate ~ "Diagnostics",
                                        m3_treat_outcome_prob < diagnostic_rate + incidental_rate ~ "Incidental",
                                        m3_treat_outcome_prob < diagnostic_rate + incidental_rate + m24_fu_rate ~ "24M_FU",
                                        TRUE ~ "12M_FU"))
  
  ### Aggregate m3 outcomes
  m3_treat_outcome_agg_df <- m3_treat_outcome_df %>%
    group_by(Trial, m3_treat_outcome) %>%
    summarise("Total" = n())
  
  ### Additional Diagnostics Output
  m3_treat_diags_df <- m3_treat_outcome_df %>%
    filter(m3_treat_outcome == "Diagnostics")
  
  ### Incidental Finding Output
  m3_incidental_df <- m3_treat_outcome_df %>%
    filter(m3_treat_outcome == "Incidental")
  
  ### 12-month follow-up Output
  m3_treat_12m_fu_df <- m3_treat_outcome_df %>%
    filter(m3_treat_outcome == "12M_FU")
  
  ### 24-month follow-up Output
  m3_treat_24m_fu_df <- m3_treat_outcome_df %>%
    filter(m3_treat_outcome == "24M_FU")
  
  ### Simulate cancer diagnosis
  m3_treat_diags_outcome_df <- m3_treat_diags_df %>%
    mutate(cancer_outcome_prob = runif(n()),
           cancer_outcome = case_when(cancer_outcome_prob < cancer_rate ~ "Cancer",
                                      TRUE ~ "Non-Malignant"))
  
  ### Aggregate cancer diagnosis
  m3_treat_diags_outcome_agg_df <- m3_treat_diags_outcome_df %>%
    group_by(Trial, cancer_outcome) %>%
    summarise("Total" = n())
  
  ### Output Cancer Dataframe
  m3_treat_cancer_output_df <- m3_treat_diags_outcome_df %>%
    filter(cancer_outcome == "Cancer")
  
  return(list(m3_dna_agg_df, m3_treat_outcome_agg_df, m3_treat_diags_df, m3_treat_12m_fu_df, m3_treat_diags_outcome_agg_df, m3_treat_cancer_output_df, m3_dna_opt_out, m3_incidental_df, m3_treat_24m_fu_df))
  
}

m3_treatment_modalities <- function(input_df, surgery_rate, surg_ac_rate, sabr_rate, xrt_rate,
                                         chemrad_rate, chemo_rate, nadj_imm_rate){
  
  ### Simulate treatment modalities
  m3_treat_modalities_df <- input_df %>%
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
  m3_treat_modalities_agg_df <- m3_treat_modalities_df %>%
    group_by(Trial, modality) %>%
    summarise("Total" = n())
  
}

m3_incidental_findings <- function(input_df, cc_rate, emp_rate, ila_rate, meda_rate, avc_rate, 
                                        bro_rate, rbr_rate, taa_rate, ost_rate, lsl_rate, ren_rate, 
                                        adr_rate, oca_rate, ple_rate, sbl_rate, con_rate, bon_rate, 
                                        fra_rate, thy_rate, aaa_rate){
  
  ### Simulate incidental findings
  m3_incidental_findings_df <- input_df %>%
    mutate(finding_prob = runif(n()),
           finding = case_when(finding_prob < cc_rate ~ "Coronary Calcification",
                               finding_prob < cc_rate + emp_rate ~ "Emphysema",
                               finding_prob < cc_rate + emp_rate + ila_rate ~ "Interstitial Lung Abnormalities",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate ~ "Mediastinal Mass",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate ~ "Aortic Valve Calcification",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate ~ "Bronchiectasis",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate ~ "Respiratory Bronchiolitis",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate ~ "Thoracic Aortic Aneurysm",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate ~ "Osteoporosis",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate ~ "Liver of Spleen Lesions",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate + ren_rate ~ "Renal Lesions",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate + ren_rate + adr_rate ~ "Adrenal Lesions",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate + ren_rate + adr_rate + oca_rate ~ "Other Cancers",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate + ren_rate + adr_rate + oca_rate + ple_rate ~ "Pleural Affusions/Thickening",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate + ren_rate + adr_rate + oca_rate + ple_rate + sbl_rate ~ "Suspicious Breast Lesion",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate + ren_rate + adr_rate + oca_rate + ple_rate + sbl_rate + con_rate ~ "Consolidation",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate + ren_rate + adr_rate + oca_rate + ple_rate + sbl_rate + con_rate + bon_rate ~ "Bone Abnormalities",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate + ren_rate + adr_rate + oca_rate + ple_rate + sbl_rate + con_rate + bon_rate + fra_rate ~ "Fractures (with no trauma history)",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate + ren_rate + adr_rate + oca_rate + ple_rate + sbl_rate + con_rate + bon_rate + fra_rate + thy_rate ~ "Thyroid Lesion",
                               finding_prob < cc_rate + emp_rate + ila_rate + meda_rate + avc_rate + bro_rate + rbr_rate + taa_rate + ost_rate + lsl_rate + ren_rate + adr_rate + oca_rate + ple_rate + sbl_rate + con_rate + bon_rate + fra_rate + thy_rate + aaa_rate ~ "Abdominal Aortic Aneurysm",
                               TRUE ~ "Tuberculosis"))
  
  ### Aggregate incidental findings
  m3_incidental_findings_agg_df <- m3_incidental_findings_df %>%
    group_by(Trial, finding) %>%
    summarise("Total" = n())
  
}
