.pkgenv <- new.env(parent = emptyenv())
assign("datasets", list(), envir = .pkgenv)

.pkgenv$datasets <- append(.pkgenv$datasets, list(


# Define datasets alphabetically starting here.
# Datasets should be in title case and not use underscores.
# The name should have no indentation before it.
# The parameters should have two spaces of indentation before them.

"3D Coords" = list(
  desc = "A data frame of 3D coordinates along a river. Includes an ID and two variables.",
  files = c("lepanthes_rupestris"),
  fn = function() {
    ecodata::lepanthes_rupestris[, c("UID", "x.coord", "y.coord", "z.coord", "Phorophyte", "Total_Moss_area")]
  }
),

"Normal Random Sets" = list(
  desc = "A data frame containing several sets of normally distributed random numbers",
  fn = function() {
    data.frame(m0_sd1 = rnorm(1000),
               m1_sd1 = rnorm(1000, 1),
               m1_sd2 = rnorm(1000, 1, 2),
               m2_sd2 = rnorm(1000, 2, 2))
  }
)

# Close
))
