
#' Specifies an animal and its sound.
#'
#' This function uses a [paste0] from _base_ R.
#'
#' @param animal Name of the animal
#' @param sound Sound of the animal
#'
#' @returns The name of animal and its sound.
#' @export
#'
#' @examples animal_sounds("cat", "purrr")

# animal_sounds <- function(animal, sound) {
#   stopifnot(is.character(animal) & length(animal) == 1)
#   stopifnot(is.character(sound) & length(sound) == 1)
#   paste0("The ", animal, " says ", sound, " ", sound, "!")
# }

animal_sounds <- function(animal, sound) {
  if (!rlang::is_character(animal) || !rlang::is_character(sound)) {
    cli::cli_abort("Both 'animal' and 'sound' must be character strings.")
  }
  paste(animal, "says", sound)
}
