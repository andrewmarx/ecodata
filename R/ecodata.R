# Copyright (c) 2022 Andrew Marx. All rights reserved.
# Licensed under GPLv3.0. See LICENSE file in the project root for details.

#' Load and/or save a data set
#'
#' Load a data set directly to an R object, save it as file, or both.
#'
#' This function is used to load one of the static or dynamic data sets provided
#' by the package. It can be either loaded directly into R as an object, or it
#' can be saved to a file by specifying the path parameter, or both.
#'
#' @param subdiscipline A string containing the name of an ecological discipline
#' @param topic A string containing the name of an analytical topic
#' @param data A string containing the name of a data set
#' @param path A string containing the path to save the data file
#'
#' @return An R object
#'
#' @example inst/examples/example.R
#'
#' @export

setGeneric(
  "ecodata",
  function(subdiscipline, topic, data, path) {
    standardGeneric("ecodata")
  })

#' @rdname ecodata
setMethod(
  "ecodata",
  signature(subdiscipline = "missing",
            topic = "missing",
            data = "missing",
            path = "missing"),
  function() {
    # TODO: list out the subdisciplines
  })

#' @rdname ecodata
setMethod(
  "ecodata",
  signature(subdiscipline = "character",
            topic = "missing",
            data = "missing",
            path = "missing"),
  function(subdiscipline) {
    # TODO: list out the topics within the given subdiscipline
  })

#' @rdname ecodata
setMethod(
  "ecodata",
  signature(subdiscipline = "character",
            topic = "character",
            data = "missing",
            path = "missing"),
  function(subdiscipline, topic) {
    # TODO: list out the data sets for the given subdiscipline and topic

  })

#' @rdname ecodata
setMethod(
  "ecodata",
  signature(subdiscipline = "character",
            topic = "character",
            data = "character",
            path = "missing"),
  function(subdiscipline, topic, data) {
    # TODO: return the data set for the given parameters
  })

#' @rdname ecodata
setMethod(
  "ecodata",
  signature(subdiscipline = "character",
            topic = "character",
            data = "character",
            path = "character"),
  function(subdiscipline, topic, data, path) {
    # TODO: same as ecodata(subdiscipline, topic, data), but with file export
    #   and invisible() return
  })
