tests <- read.table("tests.tsv", header = TRUE, sep = "\t", na.strings = "NA")
tests$gender <- factor(tests$gender,
                       levels = c(0, 1, 2, 3),
                       labels = c("Unanswered", "Male", "Female", "Other"))
tests$extroversion <- round((tests$E1 + tests$E2 + tests$E3) / 15, 2)
tests$neuroticism <- round((tests$N1 + tests$N2 + tests$N3) / 15, 2)
tests$agreeableness <- round((tests$A1 + tests$A2 + tests$A3) / 15, 2)
tests$conscientiousness <- round((tests$C1 + tests$C2 + tests$C3) / 15, 2)
tests$openness <- round((tests$O1 + tests$O2 + tests$O3) / 15, 2)

write.table(tests,"analysis.csv",sep=",",row.names=FALSE)
