a <- 2
sum(a * 2, a)


q <- rlang::quo(a + 1)
q2 <- rlang::quo(a + UQ(q))
q3 <- rlang::quo(a + q)
rlang::UQ(q)

str(q3)
attributes(q3)
q3[2]

q2[2]

identity(rlang::UQ(rlang::UQ(q)))
sum(!! q)
as.character(quote(a + 2))


identicalv <- function(arg1, arg2) {
	print(as.character(rlang::enquo(arg1)))
	print(as.character(rlang::enquo(arg2)))
	
	identical(as.character(enquote(arg1)), as.character(enquote(arg2)))
}
a <- 2
b <- 3
identicalv(c(a,3), c(a,3))
