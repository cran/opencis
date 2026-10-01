## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)


## ----eval=FALSE---------------------------------------------------------------
# install.packages("opencis")

## ----eval=FALSE---------------------------------------------------------------
# remotes::install_github("hmeleiro/opencis")

## ----eval = FALSE-------------------------------------------------------------
# library(opencis)
# 
# # Search for survey studies
# search_cis(q = "preelectoral", from = "2020-01-01", to = "2023-11-17")
# 
# # Search for survey questions
# search_cis(q = "feminismo", catalogo = "pregunta")
# 
# # Search for data series
# search_cis(q = "situación económica", catalogo = "serie")

## ----eval = FALSE-------------------------------------------------------------
# # Match any of several study codes
# search_cis(q = "*surveyCode:(2610 OR 2829 OR 2956)")
# 
# # Require barometro and 2024 in the title, but exclude sanitario
# search_cis(q = "*title_es_ES:(+barometro +2024 -sanitario)")
# 
# # Search question text and retrieve every result page
# search_all_cis(
#   q = "*question_es_ES:(divorcio)",
#   catalogo = "pregunta"
# )
# 
# # Combine fields: questions about divorce from studies after number 3540
# search_all_cis(
#   q = "*question_es_ES:(divorcio) AND surveyCodeNumber:{3540 TO *]",
#   catalogo = "pregunta"
# )
# 
# # Search for an exact phrase
# search_cis(q = '*title_es_ES:"barómetro de la vivienda"')
# 
# # Search a numeric study-code range (used in the CIS documentation)
# search_cis(q = "*(surveyCodeNumber:[3000 TO 3002])")

## ----eval = FALSE-------------------------------------------------------------
# # Retrieve all postelectoral studies (all pages)
# all_studies <- search_all_cis(q = "postelectoral")
# print(nrow(all_studies))
# 
# # Filter by date range across all pages
# studies <- search_all_cis(
#   q    = "ideologia",
#   from = "2010-01-01",
#   to   = "2020-12-31"
# )

## ----eval = FALSE-------------------------------------------------------------
# df <- read_cis(3411)
# print(df)

## ----eval = FALSE-------------------------------------------------------------
# df   <- read_cis(3328)
# dict <- get_data_dictionary(df)
# print(dict)
# 
# # Find variables whose label contains a keyword
# dict[grepl("sexo", dict$label, ignore.case = TRUE), ]
# 
# # Inspect value labels for a specific variable
# dict$value_labels[[which(dict$variable == "SEXO")]]

## ----eval = FALSE-------------------------------------------------------------
# meta <- get_metadata(3328)
# print(meta)
# 

## ----eval = FALSE-------------------------------------------------------------
# # Save to the current working directory
# path <- download_study(3328)
# cat("Saved to:", path, "\n")
# 
# # Save to a specific folder
# path <- download_study(3328, destdir = "data/raw")
# cat("Saved to:", path, "\n")

## ----eval = FALSE-------------------------------------------------------------
# # Open the questionnaire for study 3328
# browse_pdf(3328)
# 
# # Open the technical sheet
# browse_pdf(3328, wanted_file = "ft")

