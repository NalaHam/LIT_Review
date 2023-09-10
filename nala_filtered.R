library(dplyr)
library(tidyr)

filtering_nala$issue <-tolower(filtering_nala$issue)


filtering_nala_ex_long <- filtering_nala %>% 
  mutate(issue = strsplit(as.character(issue), ",")) %>%
  unnest(issue)


filtering_nala_ex_long <- filtering_nala_ex_long %>% 
  mutate(across(where(is.character), trimws))


inflammation <- append(inflammation, "inflammatory bowel disease")

infectious <- append(infectious, "tuberculosis (tb)")

autoimmune <- append(autoimmune, "systemic lupus erythematous (sle)")

cardiovascular <- append(cardiovascular, "cardiomyopathy")

development <- append(development, "ivf")

neurological <- append(neurological, "psychiatric")

chromosomal <- append(chromosomal, "x-linked inhibitor of apoptosis (xiap) deficiency")

behavioral <- append(behavioral, "behavior")

immune <- append(immune, "severe combined immunodeficiency (scid")

cancer <- append(cancer, "kidney")

aging <- append(aging, "ageing")

intellectual <- append(intellectual, "memory disorders")

blood <- append(blood, "plasma")

body <- append(body, "vision")

stroke <- append(stroke, "ischemic stroke")

chronic.pain <- append(chronic.pain, "co-morbid chronic muscuoskeletal pain")

metabolic <- append(metabolic, "metabolic disease")

hormonal <- append(hormonal, "type 2 diabetes")



filtering_nala_ex_long <- filtering_nala_ex_long %>%
  mutate(category = case_when(
    issue %in% cancer ~ "cancer",
    issue %in% autoimmune ~ "autoimmune",
    issue %in% immune ~ "immune",
    issue %in% behavioral ~ "behavioral",
    issue %in% chromosomal ~ "chromosomal",
    issue %in% neurological ~ "neurological",
    issue %in% development ~ "development",
    issue %in% aging ~ "aging",
    issue %in% cardiovascular ~ "cardiovascular",
    issue %in% intellectual ~ "intellectual",
    issue %in% blood ~ "blood",
    issue %in% body ~ "body",
    issue %in% stroke ~ "stroke",
    issue %in% hormonal ~ "hormonal",
    issue %in% infectious ~ "infectious",
    issue %in% chronic.pain ~ "chronic.pain",
    issue %in% inflammation ~ "inflammation",
    issue %in% metabolic ~ "metabolic"
  ))


library(dplyr)

#cancer
filtered_cancer <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "cancer")

cancer_papers <- unique(filtered_cancer$title)

filtered_cancer_og <- filter(filtering_nala, title %in% cancer_papers)

write.csv(filtered_cancer_og, "nala_cancer_papers.csv")

#autoimmune
filtered_autoimmune <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "autoimmune")

autoimmune_papers <- unique(filtered_autoimmune$title)

autoimmune_papers_og <- filter(filtering_nala, title %in% autoimmune_papers)

write.csv(autoimmune_papers_og, "nala_autoimmune_papers.csv")


#immune
filtered_immune <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "immune")

immune_papers <- unique(filtered_immune$title)

immune_papers_og <- filter(filtering_nala, title %in% immune_papers)

write.csv(immune_papers_og, "nala_immune_papers.csv")


#behavioral
filtered_behavioral <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "behavioral")

behavioral_papers <- unique(filtered_behavioral$title)

behavioral_papers_og <- filter(filtering_nala, title %in% behavioral_papers)

write.csv(behavioral_papers_og, "nala_behavioral_papers.csv")


#chromosomal
filtered_chromosomal <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "chromosomal")

chromosomal_papers <- unique(filtered_chromosomal$title)

chromosomal_papers_og <- filter(filtering_nala, title %in% chromosomal_papers)

write.csv(chromosomal_papers_og, "nala_chromosomal_papers.csv")


#neurological
filtered_neurological <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "neurological")

neurological_papers <- unique(filtered_neurological$title)

neurological_papers_og <- filter(filtering_nala, title %in% neurological_papers)

write.csv(neurological_papers_og, "nala_neurological_papers.csv")

#aging
filtered_aging <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "aging")

aging_papers <- unique(filtered_aging$title)

aging_papers_og <- filter(filtering_nala, title %in% aging_papers)

write.csv(aging_papers_og, "nala_aging_papers.csv")


#cardiovascular
filtered_cardiovascular <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "cardiovascular")

cardiovascular_papers <- unique(filtered_cardiovascular$title)

cardiovascular_papers_og <- filter(filtering_nala, title %in% cardiovascular_papers)

write.csv(cardiovascular_papers_og, "nala_cardiovascular_papers.csv")


#intellectual
filtered_intellectual <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "intellectual")

intellectual_papers <- unique(filtered_intellectual$title)

intellectual_papers_og <- filter(filtering_nala, title %in% intellectual_papers)

write.csv(intellectual_papers_og, "nala_intellectual_papers.csv")



#blood
filtered_blood <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "blood")

blood_papers <- unique(filtered_blood$title)

blood_papers_og <- filter(filtering_nala, title %in% blood_papers)

write.csv(blood_papers_og, "nala_blood_papers.csv")


#body
filtered_body <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "body")

body_papers <- unique(filtered_body$title)

body_papers_og <- filter(filtering_nala, title %in% body_papers)

write.csv(body_papers_og, "nala_body_papers.csv")


#stroke
filtered_stroke <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "stroke")

stroke_papers <- unique(filtered_stroke$title)

stroke_papers_og <- filter(filtering_nala, title %in% stroke_papers)

write.csv(stroke_papers_og, "nala_stroke_papers.csv")



#hormonal
filtered_hormonal <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "hormonal")

hormonal_papers <- unique(filtered_hormonal$title)

hormonal_papers_og <- filter(filtering_nala, title %in% hormonal_papers)

write.csv(hormonal_papers_og, "nala_hormonal_papers.csv")


#infectious
filtered_infectious <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "infectious")

infectious_papers <- unique(filtered_infectious$title)

infectious_papers_og <- filter(filtering_nala, title %in% infectious_papers)

write.csv(infectious_papers_og, "nala_infectious_papers.csv")


#chronic.pain
filtered_chronic.pain <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "chronic.pain")

chronic.pain_papers <- unique(filtered_chronic.pain$title)

chronic.pain_papers_og <- filter(filtering_nala, title %in% chronic.pain_papers)

write.csv(chronic.pain_papers_og, "nala_chronic_pain_papers.csv")


#inflammation
filtered_inflammation <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "inflammation")

inflammation_papers <- unique(filtered_inflammation$title)

inflammation_papers_og <- filter(filtering_nala, title %in% inflammation_papers)

write.csv(inflammation_papers_og, "nala_inflammation_papers.csv")


#metabolic
filtered_metabolic <- subset(filtering_nala_ex_long, filtering_nala_ex_long$category == "metabolic")

metabolic_papers <- unique(filtered_metabolic$title)

metabolic_papers_og <- filter(filtering_nala, title %in% metabolic_papers)

write.csv(metabolic_papers_og, "nala_metabolic_papers.csv")


#other
filtered_other <- subset(filtering_nala_ex_long, is.na(filtering_nala_ex_long$category))

other_papers <- unique(filtered_other$title)

other_papers_og <- filter(filtering_nala, title %in% other_papers)

write.csv(other_papers_og, "nala_other_papers.csv")


















