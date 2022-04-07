
test_that("Testing subdiscipline relationships", {
  sd <- .get_subdisciplines()
  st <- .get_st_pivot()

  expect_setequal(st$subdiscipline, sd$subdiscipline)
})

test_that("Testing topic relationships", {
  topics <- .get_topics()
  st <- .get_st_pivot()
  td <- .get_td_pivot()

  expect_setequal(topics$topic, st$topic)
  expect_setequal(topics$topic, td$topic)
})

test_that("Testing dataset relationships", {
  ds <- .get_datasets()
  td <- .get_td_pivot()

  expect_setequal(ds$dataset, td$dataset)
})
