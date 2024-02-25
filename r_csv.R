#scraping data from website
install.packages("rvest")
library(rvest)
webage <- read_html("https://en.wikipedia.org/wiki/Comma-separated_values")
cars_table <- webage%>% html_elements("pre")
cars_table
html_text(cars_table[11])


install.packages("tidyverse")
library(tidyverse)
r_csv <- cars_table[11]
html_text(r_csv)
glimpse(r_csv)
class(r_csv)
html_text(r_csv)
class(r_csv)
install.packages ("XML")
install.packages("plyr")
html_text(r_csv)

class(cars_table[11])
df <- as.data.frame.character(html_text(r_csv))


write.csv(html_text(r_csv), file = '/Users/wongrachel/Documents/r_csv.csv', row.names = FALSE)


