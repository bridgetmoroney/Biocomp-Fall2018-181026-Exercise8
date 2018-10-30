setwd("/Users/bridgetmoroney/Desktop/Biocomp-Fall2018-181026-Exercise8/")
countUW=0
countMSU=0
scores=read.table("UWvMSU_1-22-13.txt", stringsAsFactors = F, header = T)
for (i in 1:nrow(scores)){
  if (scores$team[i]=="UW"){
    countUW=0+scores$score[i]
    countUW[i]=scores$score[i]+countUW
    totalsUW=data.frame(time=scores$time, score=countUW[i])
  }else{
    countMSU=0+scores$score[i]
    countMSU[i]=scores$score[i]+countMSU
    totalsMSU=data.frame(time=scores$time, score=countMSU[i])
  }
}
#do I need to unlist and define a previous variable?
setwd("/Users/bridgetmoroney/Desktop/Biocomp-Fall2018-181026-Exercise8/")
rm(list=ls())
#second try
countUW=0
countMSU=0
#defining empty counts for scores
scores=read.table("UWvMSU_1-22-13.txt", stringsAsFactors = F, header = T)
scores$cumulativeScoreUW=NA
scores$cumulativeScoreMSU=NA
for (i in 1:nrow(scores)){
  #starting for loop to iterate over all rows of scores file
  if (scores$team[i]=="UW"){
    countUW=scores$score[i]+countUW
    current=countUW+scores$score[i]
    scores[i,4]=current
    #adding to count if matches score for UW
  }else{
    countMSU=scores$score[i]+countMSU
    current2=countMSU+scores$score[i]
    scores[i,5]=current2
    #adding to count if matches score for MSU
  }
}
plot=ggplot(data=scores,aes(x=time,y=cumulativeScoreUW,y=cumulativeScoreMSU))
?plot
plot(scores$time,scores$cumulativeScoreUW,type="p",xlab="Time (s)",ylab="Score")
points(scores$time,scores$cumulativeScoreMSU)

#just need to figure out how to get starting score accurate

#asking user for guess
random=sample(seq(1,100), size = 1)
guess=readline(prompt="Input number guess:")
#when the user types their answer in the console it will set the guess variable equal to that number
for (i in random){
  guess
  if guess==random
  print("correct!")
}else{
  if guess>random
  print("greater")}
}else{
  if guess<random
}
}
}


#what do I index over and how to tell done after correct

randomGuess=readline(prompt="Guess a number between 1 and 100:")
input=0
randomNumber=sample(seq(1,100),size=1)

input=randomGuess
while(input !=randomGuess){
  if(input < randomNumber){
    print("Higher!")
  }else if(input > rand){
    print("Lower!")
  }else{
    print("You've got it!")
  }
  input = input +1
}
#how do I get the game to work for user?







