## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)


## ----eval=FALSE---------------------------------------------------------------
# devtools::install_github("hmeleiro/opencis")

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

