library(rvest)

link<-read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")

Title<-link %>%html_nodes(".article_movie_title a")%>%html_text()


Critic_Concensus <-link %>%html_nodes(".critics-consensus")%>%html_text()

synopsis<-link %>%html_nodes(".synopsis")%>%html_text()

Director<-link %>%html_nodes(".director .descriptor+ a")%>%html_text()

df<-data.frame(Title,Critic_Concensus,synopsis,director)

