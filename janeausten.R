library(syuzhet)
library(ggplot2)
library(stringr)
library(magrittr)
library(rvest)
library(NLP)
library(tidyr)

# all of the following books obtained from Project Gutenberg

# Pride and Prejudice
# remove the header and footer
PNP = read_lines("http://www.gutenberg.org/cache/epub/1342/pg1342.txt", skip = 30, n_max = 13060)
raw = get_text_as_string("http://www.gutenberg.org/cache/epub/1342/pg1342.txt")
PandP = get_sentences(raw)

PNP2 = get_sentences(PNP)

sentiments = get_sentiment(PNP2, method="nrc")
get_percentage_values(list.flatten(sentiments))
plot(get_percentage_values(sentiments), main = "Pride and Prejudice", xlab = "Narrative Time", ylab = "Emotion", type="l")

# not complete yet
# Here are some references:
# http://juliasilge.com/blog/If-I-Loved-NLP-Less/
# http://juliasilge.com/blog/You-Must-Allow-Me/
# http://rpubs.com/lmullen/58030