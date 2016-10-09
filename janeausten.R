library(readr)
library(syuzhet)
library(magrittr)

# all of the following books obtained from Project Gutenberg

# Pride and Prejudice
# remove the header and footer

raw <- "http://www.gutenberg.org/cache/epub/1342/pg1342.txt" %>%
  read_lines(skip = 30, n_max = 13060)

PNP <- raw %>%
  get_sentences

sentiments <- PNP %>%
  get_sentiment(method="nrc")
sentiments = a

sentiments %>%
  get_percentage_values %>%W
  plot(main = "Pride and Prejudice", xlab = "Narrative Time", ylab = "Emotion", type="l")
abline(h=0, col=3, lty=2)

