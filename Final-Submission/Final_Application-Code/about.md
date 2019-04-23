### Coursera Data Science Capstone Project


This application is the capstone project for the Coursera Data Science specialization held by he Johns Hopkins University and in cooperation with SwiftKey.


******

#### Course Objective

The goal of this exercise is to create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others. 
For this project you must submit:

1. A Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.
2. A slide deck consisting of no more than 5 slides created with R Studio Presenter pitching your algorithm and app as if you were presenting to your boss or an investor.

All text data that is used to create a frequency dictionary and thus to predict the next words comes from a corpus called [HC Corpora](http://www.corpora.heliohost.org/). 


******

#### The Applied Methods & Models

Due to memory issue (I am using a laptop which have 4GB RAM and whole data-set is throwing OOM error), I have to sample the Twitter, News & Blogs files of English language. 

After creating a data sample from the HC Corpora data, this sample was cleaned by conversion to lowercase, removing punctuation, links, white space, numbers and all kinds of special characters.
This data sample was then into so-called [*n*-grams](http://en.wikipedia.org/wiki/N-gram). 

Those aggregated bi-,tri- and quadgram term frequency matrices have been transferred into frequency dictionaries.

The resulting data.frames are used to predict the next word in connection with the text input by a user of the described application and the frequencies of the underlying *n*-grams table.


******

#### Additional Information

Application code as well as generated nGram files are stored in GitHub repo: [https://github.com/parthashazra/Capstone-Master](https://github.com/parthashazra/Capstone-Master)
