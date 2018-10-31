setwd("/Users/bridgetmoroney/Desktop/Biocomp-Fall2018-181026-Exercise8/")
#setting working directory 
countUW=0
#setting a count for UW
countMSU=0
#setting a count for MSU
scores=read.table("UWvMSU_1-22-13.txt", stringsAsFactors = F, header = T)
#loading .txt file with scores 
scores$cumulativeScore=NA
#inserting empty column in the scores file to send for loop results to
for (i in 1:nrow(scores)){
  #starting for loop to iterate over all rows of scores file
  if (scores$team[i]=="UW"){
    countUW=scores$score[i]+countUW
    scores[i,4]=countUW
    #adding to count if team name in the row matches score for UW
  }else{
    countMSU=scores$score[i]+countMSU
    scores[i,4]=countMSU
    #adding to count if team name in the row matches score for MSU
  }
}
plot=ggplot(data=scores,aes(x=time,y=cumulativeScore, color=team,group=team))
#using ggplot to create a plot from scores data using new column as y axis and time as y
#color and group tag create two distinct lines for each team's cumulative score
plot+geom_line()+theme_classic()+xlab("Time (min)")+ylab("Cumulative Team Score")+ggtitle("MSU vs.UW Game")
#creating line plot with more specific labels and a title



game=function(){
  #defining the game as function so it can be run later
  number=sample(1:100,1)
  #setting a number that randomly samples between 1 and 100 every time game function is called
  randomGuess=readline(prompt="Guess a number between 1 and 100:")
  #creating prompt for user to set a number guess
  while(randomGuess!=number){
    #while loop to ensure guesses are only made if guess does not equal random number
    if(randomGuess>number){
      print("Lower")
      randomGuess=readline(prompt="Guess again:")
      #console will display the word lower if the user guesses too high and will prompt them for another guess
    }else if(randomGuess<number){
      print("Higher")
      randomGuess=readline(prompt="Guess again:")
      #console will display the word higher if the user guesses too low and will prompt them for another guess
    }
  }
  print("You did it!")
  #printing you did it if the user guesses the correct number, the while condition is no longer met
}
game()
#use to run the game function
