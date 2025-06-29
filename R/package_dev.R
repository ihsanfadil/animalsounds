
# 0. Be sure you have the required tools and packages ---------------------
library(devtools)

has_devel() # from devtools, if success then Xcode is properly set up
packageVersion("usethis") # devtools automatically installs usethis
# Make git and github ready
usethis::create_github_token()
usethis::git_sitrep()
# usethis::git_vaccinate()
# gitcreds::gitcreds_set()

# 1. Create packages ------------------------------------------------------
library(here)
library(usethis)

pak::pkg_name_check('animalsounds') # Check availability of a package name
usethis::create_package("/Users/ihsan/Desktop/animalsounds")
usethis::use_git() # Create project then create a repo on your local machine
usethis::use_github()
usethis::use_github(private = TRUE) # Private repo

use_r("animal_sounds")
devtools::load_all(".")
animal_sounds("cat", "purrr")
