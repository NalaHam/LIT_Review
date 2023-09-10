library(dplyr)

#cancer
filtered_cancer <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "cancer")

cancer_papers <- unique(filtered_cancer$title)

filtered_cancer_og <- filter(filtering_an, title %in% cancer_papers)

write.csv(filtered_cancer_og, "an_cancer_papers.csv")

#autoimmune
filtered_autoimmune <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "autoimmune")

autoimmune_papers <- unique(filtered_autoimmune$title)

autoimmune_papers_og <- filter(filtering_an, title %in% autoimmune_papers)

write.csv(autoimmune_papers_og, "an_autoimmune_papers.csv")


#immune
filtered_immune <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "immune")

immune_papers <- unique(filtered_immune$title)

immune_papers_og <- filter(filtering_an, title %in% immune_papers)

write.csv(immune_papers_og, "an_immune_papers.csv")


#behavioral
filtered_behavioral <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "behavioral")

behavioral_papers <- unique(filtered_behavioral$title)

behavioral_papers_og <- filter(filtering_an, title %in% behavioral_papers)

write.csv(behavioral_papers_og, "an_behavioral_papers.csv")


#chromosomal
filtered_chromosomal <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "chromosomal")

chromosomal_papers <- unique(filtered_chromosomal$title)

chromosomal_papers_og <- filter(filtering_an, title %in% chromosomal_papers)

write.csv(chromosomal_papers_og, "an_chromosomal_papers.csv")


#neurological
filtered_neurological <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "neurological")

neurological_papers <- unique(filtered_neurological$title)

neurological_papers_og <- filter(filtering_an, title %in% neurological_papers)

write.csv(neurological_papers_og, "an_neurological_papers.csv")

#aging
filtered_aging <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "aging")

aging_papers <- unique(filtered_aging$title)

aging_papers_og <- filter(filtering_an, title %in% aging_papers)

write.csv(aging_papers_og, "an_aging_papers.csv")


#cardiovascular
filtered_cardiovascular <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "cardiovascular")

cardiovascular_papers <- unique(filtered_cardiovascular$title)

cardiovascular_papers_og <- filter(filtering_an, title %in% cardiovascular_papers)

write.csv(cardiovascular_papers_og, "an_cardiovascular_papers.csv")


#intellectual
filtered_intellectual <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "intellectual")

intellectual_papers <- unique(filtered_intellectual$title)

intellectual_papers_og <- filter(filtering_an, title %in% intellectual_papers)

write.csv(intellectual_papers_og, "an_intellectual_papers.csv")



#blood
filtered_blood <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "blood")

blood_papers <- unique(filtered_blood$title)

blood_papers_og <- filter(filtering_an, title %in% blood_papers)

write.csv(blood_papers_og, "an_blood_papers.csv")


#body
filtered_body <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "body")

body_papers <- unique(filtered_body$title)

body_papers_og <- filter(filtering_an, title %in% body_papers)

write.csv(body_papers_og, "an_body_papers.csv")


#stroke
filtered_stroke <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "stroke")

stroke_papers <- unique(filtered_stroke$title)

stroke_papers_og <- filter(filtering_an, title %in% stroke_papers)

write.csv(stroke_papers_og, "an_stroke_papers.csv")



#hormonal
filtered_hormonal <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "hormonal")

hormonal_papers <- unique(filtered_hormonal$title)

hormonal_papers_og <- filter(filtering_an, title %in% hormonal_papers)

write.csv(hormonal_papers_og, "an_hormonal_papers.csv")


#infectious
filtered_infectious <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "infectious")

infectious_papers <- unique(filtered_infectious$title)

infectious_papers_og <- filter(filtering_an, title %in% infectious_papers)

write.csv(infectious_papers_og, "an_infectious_papers.csv")


#chronic.pain
filtered_chronic.pain <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "chronic.pain")

chronic.pain_papers <- unique(filtered_chronic.pain$title)

chronic.pain_papers_og <- filter(filtering_an, title %in% chronic.pain_papers)

write.csv(chronic.pain_papers_og, "an_chronic_pain_papers.csv")


#inflammation
filtered_inflammation <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "inflammation")

inflammation_papers <- unique(filtered_inflammation$title)

inflammation_papers_og <- filter(filtering_an, title %in% inflammation_papers)

write.csv(inflammation_papers_og, "an_inflammation_papers.csv")


#metabolic
filtered_metabolic <- subset(filtering_an_ex_long, filtering_an_ex_long$category == "metabolic")

metabolic_papers <- unique(filtered_metabolic$title)

metabolic_papers_og <- filter(filtering_an, title %in% metabolic_papers)

write.csv(metabolic_papers_og, "an_metabolic_papers.csv")


#other
filtered_other <- subset(filtering_an_ex_long, is.na(filtering_an_ex_long$category))

other_papers <- unique(filtered_other$title)

other_papers_og <- filter(filtering_an, title %in% other_papers)

write.csv(other_papers_og, "an_other_papers.csv")














