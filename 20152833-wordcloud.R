# 한림대학교 20152833 김준형

# 패키지 설치하기
install.packages("data.table")
install.packages("devtools")

# 패키지 불러오기
library(data.table)
library(wordcloud2)

# 패키지 설치하기
library(devtools)
install_github("lchiffon/wordcloud2")

# 데이터 불러오기
data <- fread("chicken.txt", sep = ":", header = FALSE, stringsAsFactors = FALSE, encoding = "UTF-8")
names(data) <- c("brand", "n")
data$n <- as.numeric(data$n)

# 워드클라우드 만들기
wordcloud2(data = data, figPath = "20152833-chicken-leg-original.png", size = 0.3, col = "darkorange")
