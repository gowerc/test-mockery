

#' @export
somefun <- function() 1


#' @export
get_list_of_fun <- function() {
    list("myfun" = somefun)
}


some_other_fun <- function() 5

main_internal <- function() {
    some_other_fun()
}


#' @export
main <- function(x, t) {
    UseMethod("main")
}


#' @export
main.meth <- function(x, t = get_list_of_fun()) {
    return(main_internal())
}



