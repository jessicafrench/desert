library(httr)
library(purrr)

# Querying the GitHub REST api

r <- GET("https://api.github.com/users/brunj7/repos")
r$url
r$status_code

my_repo_list <- content(r)
my_repo_list[[1]]$full_name

my_Repos <- map_chr(my_repo_list, "full_name") #map_chr is in purrr and gives all of the
#full_names in the list my_repo_list.
my_Repos
