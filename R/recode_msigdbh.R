# Define special dplyr::recode_values to make MSigDB Hallmark names readable
## American spelling, sentence case

#' Nicely format MSigDB Hallmark gene set names.
#' 
#' American spelling, sentence case, Greek characters included.
#' @param msigdbh_names A vector of MSigDB Hallmark gene set names from MSigDB H GMT files to be formatted.
#'
#' @return A character vector of formatted MSigDB Hallmark gene set names.
#' @export
#'
#' @examples
#' x <- c(
#'   "HALLMARK_ADIPOGENESIS",
#'   "HALLMARK_G2M_CHECKPOINT",
#'   "HALLMARK_IL6_JAK_STAT3_SIGNALING"
#' )
#' recode_msigdbh(x)

recode_msigdbh <- function(msigdbh_names) {
  dplyr::recode_values(
    msigdbh_names,

    # Manually define symbols
    "HALLMARK_ADIPOGENESIS" ~ "Adipogenesis",
    "HALLMARK_ALLOGRAFT_REJECTION" ~ "Allograft rejection",
    "HALLMARK_ANDROGEN_RESPONSE" ~ "Androgen response",
    "HALLMARK_ANGIOGENESIS" ~ "Angiogenesis",
    "HALLMARK_APICAL_JUNCTION" ~ "Apical junction",
    "HALLMARK_APICAL_SURFACE" ~ "Apical surface",
    "HALLMARK_APOPTOSIS" ~ "Apoptosis",
    "HALLMARK_BILE_ACID_METABOLISM" ~ "Bile acid metabolism",
    "HALLMARK_CHOLESTEROL_HOMEOSTASIS" ~ "Cholesterol homeostasis",
    "HALLMARK_COAGULATION" ~ "Coagulation",
    "HALLMARK_COMPLEMENT" ~ "Complement",
    "HALLMARK_DNA_REPAIR" ~ "DNA repair",
    "HALLMARK_E2F_TARGETS" ~ "E2F targets",
    "HALLMARK_EPITHELIAL_MESENCHYMAL_TRANSITION" ~ "Epithelial-mesenchymal transition",
    "HALLMARK_ESTROGEN_RESPONSE_EARLY" ~ "Early estrogen response",
    "HALLMARK_ESTROGEN_RESPONSE_LATE" ~ "Late estrogen response",
    "HALLMARK_FATTY_ACID_METABOLISM" ~ "Fatty acid metabolism",
    "HALLMARK_G2M_CHECKPOINT" ~ "G2/M checkpoint",
    "HALLMARK_GLYCOLYSIS" ~ "Glycolysis",
    "HALLMARK_HEDGEHOG_SIGNALING" ~ "Hedgehog signaling",
    "HALLMARK_HEME_METABOLISM" ~ "Heme metabolism",
    "HALLMARK_HYPOXIA" ~ "Hypoxia",
    "HALLMARK_IL2_STAT5_SIGNALING" ~ "IL-2-STAT5 signaling",
    "HALLMARK_IL6_JAK_STAT3_SIGNALING" ~ "IL-6/JAK/STAT3 signaling",
    "HALLMARK_INFLAMMATORY_RESPONSE" ~ "Inflammatory response",
    "HALLMARK_INTERFERON_ALPHA_RESPONSE" ~ "IFN-\u03b1 response",
    "HALLMARK_INTERFERON_GAMMA_RESPONSE" ~ "IFN-\u03b3 response",
    "HALLMARK_KRAS_SIGNALING_DN" ~ "KRAS signaling down",
    "HALLMARK_KRAS_SIGNALING_UP" ~ "KRAS signaling up",
    "HALLMARK_MITOTIC_SPINDLE" ~ "Mitotic spindle",
    "HALLMARK_MTORC1_SIGNALING" ~ "mTORC1 signaling",
    "HALLMARK_MYC_TARGETS_V1" ~ "MYC targets V1",
    "HALLMARK_MYC_TARGETS_V2" ~ "MYC targets V2",
    "HALLMARK_MYOGENESIS" ~ "Myogenesis",
    "HALLMARK_NOTCH_SIGNALING" ~ "Notch signaling",
    "HALLMARK_OXIDATIVE_PHOSPHORYLATION" ~ "Oxidative phosphorylation",
    "HALLMARK_P53_PATHWAY" ~ "p53 pathway",
    "HALLMARK_PANCREAS_BETA_CELLS" ~ "Pancreas beta cells",
    "HALLMARK_PEROXISOME" ~ "Peroxisome",
    "HALLMARK_PI3K_AKT_MTOR_SIGNALING" ~ "PI3K/AKT/mTOR pathway",
    "HALLMARK_PROTEIN_SECRETION" ~ "Protein secretion",
    "HALLMARK_REACTIVE_OXYGEN_SPECIES_PATHWAY" ~ "Reactive oxygen species pathway",
    "HALLMARK_SPERMATOGENESIS" ~ "Spermatogenesis",
    "HALLMARK_TGF_BETA_SIGNALING" ~ "TGF-\u03b2 signaling",
    "HALLMARK_TNFA_SIGNALING_VIA_NFKB" ~ "TNF-\u03b1 signaling via NF-\u03baB",
    "HALLMARK_UNFOLDED_PROTEIN_RESPONSE" ~ "Unfolded protein response",
    "HALLMARK_UV_RESPONSE_DN" ~ "UV response down",
    "HALLMARK_UV_RESPONSE_UP" ~ "UV response up",
    "HALLMARK_WNT_BETA_CATENIN_SIGNALING" ~ "Wnt/\u03b2-catenin signaling",
    "HALLMARK_XENOBIOTIC_METABOLISM" ~ "Xenobiotic metabolism",

    # Failsafe - do not modify name if missing
    default = msigdbh_names
  )
}
