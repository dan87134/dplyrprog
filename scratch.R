a <- 2
sum(a * 2, a)


as.character(quote(a + 2))


identicalv <- function(arg1, arg2) {
	print(as.character(rlang::enquo(arg1)))
	print(as.character(rlang::enquo(arg2)))
	
	identical(as.character(enquote(arg1)), as.character(enquote(arg2)))
}
a <- 2
b <- 3
identicalv(c(a,3), c(a,3))
