
test_that("test - 1",  {
    x <- 1
    class(x) <- "meth"
    mocky <- mockery::mock(2)
    mockery::stub(main, "some_other_fun", mocky, depth = 2)
    expect_equal(main(x), 2)
})


test_that("test - 2",  {
    expect_equal(get_list_of_fun(), list("myfun" = somefun))
})



