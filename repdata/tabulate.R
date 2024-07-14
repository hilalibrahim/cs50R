#votes<- read.table(
 # "votes.csv",
 # sep=",",
 # header = TRUE
#)

votes<- read.csv("votes.csv")
#View(votes)
#sum(votes$poll)
votes$total<-votes$poll + votes$mail
write.csv(votes,"totals.csv",row.names = FALSE)
