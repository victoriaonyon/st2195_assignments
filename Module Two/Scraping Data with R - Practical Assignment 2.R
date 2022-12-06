# Install rvest
install.packages("rvest")

# Load package
library(rvest)
library(rlist)
library(stringi)
library(htmltab)

# Request the data from the webpage that holds it
url <- "https://en.wikipedia.org/wiki/Comma-separated_values#Example"

# Return a dataframe
cars <- url %>%
 read_html() %>%
  html_nodes(xpath='//*[@id="mw-content-text"]/div[1]/table[3]') %>%
  html_table(fill = TRUE)
  
head(cars)


