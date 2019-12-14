# 🍗 치킨모양 워드클라우드 만들기

- 목표: 치킨 체인별 매장수에 따른 치킨모양 워드클라우드 만들기

- 과정: 
1. 텍스트 파일(chicken.txt)을 불러온다
2. 텍스트 파일을 불러와 저장한 변수(data)를 알맞는 형태로 조정한다.
3. figPath 옵션에서 치킨 이미지(20152833-chicken-leg-original.png)를 불러와서 그 형태에 맞게 워드클라우드를 만든다.

- 코드:
<pre><code># 패키지 설치하기
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
</code></pre>

- 결과물 예시:
<p><img src="https://github.com/draxcel/korean_chicken/blob/master/20152833-chicken-leg-result.jpg?raw=true" alt="마크다운 로고" width="300" height="270"></p>
