## Read in csv
##Changing thingz
library(tidyverse)
library(here)

my_fav_dessert <- read_csv(here("favorite_desserts.csv"))
fav_dessert_list <- read_csv(here("iconic_desserts.txt"))

for (i in my_fav_dessert$last_name) {
  for (j in seq_along(fav_dessert_list$dessert)){
  if (str_to_lower(i) %in% str_to_lower(fav_dessert_list$dessert)) {
    rank <- fav_dessert_list$rank[j]
    print(paste(i, "is ranked", rank ))}
}
}
