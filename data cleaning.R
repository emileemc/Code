https://www.r-bloggers.com/rstudio-and-github/ 

install.packages("devtools")
devtools::install_github("56north/Rmazon")

#Reviews for the gene an intimate history
reviews <- Rmazon::get_reviews("1476733503")


reviews$Verified_Purchase[reviews$Verified_Purchase=="TRUE"] <- "1"
reviews$Verified_Purchase[reviews$Verified_Purchase=="FALSE"] <- "0"


sum(as.numeric(reviews$Verified_Purchase))
hist(as.numeric(reviews$Verified_Purchase))

hist(reviews$reviewRating)