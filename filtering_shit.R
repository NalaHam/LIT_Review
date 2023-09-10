library(dplyr)
library(tidyr)


filtering_an$issue <-tolower(filtering_an$issue)


filtering_an_ex_long <- filtering_an %>% 
  mutate(issue = strsplit(as.character(issue), ",")) %>%
  unnest(issue)


filtering_an_ex_long <- filtering_an_ex_long %>% 
  mutate(across(where(is.character), trimws))




test_df <- filtering_an[0:3,]

types <- colnames(issue_lists)

types <- list(types)

cancer <- issue_lists$cancer
cancer <- tolower(cancer)

cancer <- append(cancer, "cancer (carcinoma)")


autoimmune <- issue_lists$autoimmune
autoimmune <- tolower(autoimmune)

autoimmune <- autoimmune[1:23]
autoimmune <- append(autoimmune, "autoimmune")
autoimmune <- append(autoimmune, "autoimmunity")



immune <- issue_lists$immune
immune <- tolower(immune)

immune <- immune[1:10]
immune <- append(immune, "immune responses")


behavioral <- issue_lists$behavioral
behavioral <- tolower(behavioral)

behavioral <- behavioral[1:29]
behavioral <- append(behavioral, "behavioral")
behavioral <- append(behavioral, "mood disorders")


chromosomal <- issue_lists$chromosomal
chromosomal <- tolower(chromosomal)

chromosomal <- append(chromosomal, "chromosomal")
chromosomal <- append(chromosomal, "klinefelter's syndrome")


neurological <- issue_lists$neurological
neurological <- tolower(neurological)

neurological <- neurological[1:24]
neurological <- append(neurological, "neuropyschiatric")


development <- issue_lists$development
development <- tolower(development)

development <- development[1:44]
development <- append(development, "development")
development <- append(development, "fetal and neonatal morbitiy and mortalitity")


aging <- issue_lists$aging
aging <- tolower(aging)

aging <- aging[1:2]
aging <- append(aging, "ageing")


cardiovascular <- issue_lists$cardiovascular
cardiovascular <- tolower(cardiovascular)

cardiovascular <- cardiovascular[1:12]
cardiovascular <- append(cardiovascular, "cardiovascular system")


intellectual <- issue_lists$intellectual
intellectual <- tolower(intellectual)

intellectual <- intellectual[1:9]
intellectual <- append(intellectual, "intellectual")
intellectual <- append(intellectual, "down's syndrome")


blood <- issue_lists$blood
blood <- tolower(blood)

blood <- blood[1:11]
blood <- append(blood, "hemophilia")


body <- issue_lists$body
body <- tolower(body)

body <- body[1:44]
body <- append(body, "muscle disorders")
body <- append(body, "micropthalmia")


stroke <- issue_lists$stroke
stroke <- tolower(stroke)

stroke <- stroke[1:2]
stroke <- append(stroke, "ischemic stroke")


hormonal <- issue_lists$hormonal
hormonal <- tolower(hormonal)

hormonal <- hormonal[1:4]
hormonal <- append(hormonal, "androgen insensitivity receptor")


infectious <- issue_lists$infectious
infectious <- tolower(infectious)

infectious <- infectious[1:12]
infectious <- append(infectious, "infectious disease")


chronic.pain <- issue_lists$chronic.pain
chronic.pain <- tolower(chronic.pain)

chronic.pain <- chronic.pain[1:3]
chronic.pain <- append(chronic.pain, "co-morbid chronic muscuoskeletal pain")


inflammation <- issue_lists$inflammation
inflammation <- tolower(inflammation)

inflammation <- inflammation[1:4]
inflammation <- append(inflammation, "inflammatory")


metabolic <- issue_lists$metabolic
metabolic <- tolower(metabolic)

metabolic <- metabolic[1:4]
metabolic <- append(metabolic, "metabolic disease")



cancer <- cancer[1:24]

cancer_df <- test_df[test_df$issue == cancer]




filtering_an_ex_long <- filtering_an_ex_long %>%
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

unique(filtered_df_an$category)








