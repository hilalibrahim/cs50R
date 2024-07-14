# Demonstrates reading data from a URL

url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)

unique(voters$Q22)
factor(
  voters$Q21,
  labels = c("Yes","No","Unsure/Undecided"),
  exclude = c(-1)
  )
