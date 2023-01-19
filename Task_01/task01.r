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
library(swirl)
5 + 7
x <- 5 + 7
x
y <- x -3
y
c(1.1, 9, 3.14)
z <- c(1.1, 9, 3.14)
?c
z
c(z, 555, z)
z * 2 + 100
my_sqrt <- sqrt(z - 1)
1
my_sqrt
my_div <- z/my_sqrt
1
my_div
c(1, 2, 3, 4) +c(0, 10)
c(1, 2, 3, 4) + c(0, 10, 100)
z * 2 + 1000
my_div
2
library(swirl)
swirl()
Adam
1
2
getwd()
ls()
x <- 9
ls()
dir()
?list.files
args(list.files)
old.dir <- getwd()
dir.create("testdir")
setwd("testdir")
file.create("mytest.R")
list.files()
file.exists("mytest.R")
file.info("mytest.R")
file.rename("mytest.R", "mytest2.R")
file.copy("mytest2.R", "mytest3.R")
file.path("mytest3.R")
file.path("folder1", "folder2")
?dir.create
dir.create(file.path('testdir2', 'testdir3'), recursive=TRUE
setwd(old.dir)
2
library(swirl)
swirl()
Adam
1
3
1:20
pi:10
15:1
?":"
seq(1, 20)
seq(0, 10, by=0.5)
seq(5, 10, length=30)
my_seq <- seq(5, 10, length=30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0, times=40)
rep(c(0, 1, 2), times = 10)
rep(c(0, 1, 2), each = 10)
2
1
4
num_vect <- c(0.5, 55, -10, 6)
tf <- num_vect < 1
1
tf
num_vect >=6
1
1
2
my_char <- c("My", "name", "is")
my_char
paste(my_char, collapse = " ")
my_name <- c(my_char, "Swirl")
my_name
paste(my_name, collapse= " ")
paste("Hello", "world!", sep= " ")
paste(1:3, c("X", "Y", "Z"), sep= "")
paste(LETTERS, 1:4, sep = "-")
1
1
5
x <- c(44, NA, 5, NA)
x * 3
y <- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y, z), 100)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na)
my_data
 0 / 0
 Inf - Inf
 1
 1
 6
 x
 x[1:10]
 2,
 x[is.na(x)],
 y <- x[!is.na(x)],
 y,
 3,
 y[y > 0]
 x[x > 0]
 x[!is.na(x) & x > 0]
x[c(3,5, 7)]
x[0]
x[3000]
x[c(-2, -10)]
x[-c(2, 10)]
vect <- c(foo = 11, bar = 2, norf =NA)
vect
names(vect)
vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf")
identical(vect, vect2)
1,
vect["bar"]
vect[c("foo", "bar")]
2
library(swirl)
swirl()
Adam
1
8
TRUE == TRUE
(FALSE == TRUE) == FALSE
6 == 7
6 < 7
6 <= 7
10 <= 10
3
2
5 != 7
!5 == 7
1
2
FALSE & FALSE
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)
5 > 8 || 6 != 8 && 4 > 3.9
2
3
isTRUE(6 > 4)
1
identical('twins', 'twins')
2
xor(5 == 6, !FALSE)
1
ints <- sample(10)
ints,
ints > 5
which(ints > 7)
3
any(ints < 0)
all(ints > 0)
2
1
library(swirl)
swirl()
Adam
2
1
9
Sys.Date()
mean(c(2, 4, 5))
submit()
boring_function('My first function!')
boring_function
submit()
my_mean(c(4, 5, 10))
submit()
remainder(5)
remainder(11, 5)
remainder(divisor = 11, num = 5)
remainder(4, div = 2)
args(remainder)
submit()
evaluate(sd, c(1.4, 3.6, 7.9, 8.8))
evaluate(function(x){x+1}, 6)
evaluate(function(x){x[1]}, c(8, 4, 0))
evaluate(function(x){x[length(x)]}, c(8, 4, 0))
?paste
paste("Programming", "is", "fun!")
submit()
telegram(c("Programming"))
submit()
submit()
mad_libs(place = "France", adjustive= "pretty", noun = "Rabbit")
submit()
"R" %p% "Is" %p% "Great!"
submit()
'I' %p% 'love' %p% 'R!'
1
library (swirl)
swirl()
Adam
2
1
15
data(cars)
?cars
head(cars)
plot(cars)
?plot,
plot(x = cars$speed, y = cars$dist)
plot(x = cars$dist, y= cars$speed)
plot(x = cars$speed, y = cars$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, ylab= "Stopping Distance")
plot(x= cars$speed, y = cars$dist, xlab = "Speed", ylab= "Stopping Distance")
plot(cars, main = "My Plot")
plot(cars, sub = "My Plot Subtitle")
plot(cars, col =2)
plot(cars, xlim =c(10, 15))
plot(cars, pch =2)
data(mtcars)
?boxplot
boxplot(mpg~ cyl, data = mtcars)
hist(mtcars$mpg)
setwd(" ")
