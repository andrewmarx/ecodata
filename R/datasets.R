.pkgenv <- new.env(parent = emptyenv())
assign("data_sets", list(), envir = .pkgenv)

.pkgenv$data_sets <- append(.pkgenv$data_sets, list(

#
# Define data sets alphabetically starting here.
# The name should have no indentation before it.
# The parameters should have two spaces of indentation before them.
#

"Normal Random Sets" = list(
  desc = "A data frame containing several sets of normally distributed random numbers",
  files = NA,
  params = NA,
  fn = function(f, p) {
    data.frame(first = rnorm(500),
               second = rnorm(500, 1),
               third = rnorm(500, 1, 2),
               fourth = rnorm(500, 2, 2))
  }
),

"Data set 1" = list(
  desc = "DS1 description here",
  files = NA,
  params = NA,
  fn = function(f, p) {
    "DS1 data here"
  }
),

"Data set 2" = list(
  desc = "DS2 description here",
  files = NA,
  params = NA,
  fn = function(f, p) {
    "DS2 data here"
  }
),

"Data set 3" = list(
  desc = "DS3 description here",
  files = NA,
  params = NA,
  fn = function(f, p) {
    "DS3 data here"
  }
)
# Close
))
