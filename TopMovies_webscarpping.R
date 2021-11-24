library(rvest)

link<-read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")

title<-link %>%html_nodes(".article_movie_title a")%>%html_text()


CC<-link %>%html_nodes(".critics-consensus")%>%html_text()

synopsis<-link %>%html_nodes(".synopsis")%>%html_text()

director<-link %>%html_nodes(".director .descriptor+ a")%>%html_text()

df<-data.frame(title,CC,synopsis,director)
