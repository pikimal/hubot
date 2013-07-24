# Description:
#   Hubot responds to claims that he is dead/ignoring user/mad at user
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   Alaina Cauchie

response = [
  "Don't worry guys, I'm still here",
  "I'm not in a good place right now",
  "Ask again later",
  "I'm not your maid",
  "That last one was a doozie",
  "*shakes head*"
]

module.exports = (robot) ->
  robot.hear /where is hubot/i, (msg) ->
    msg.send msg.random response
    
  robot.hear /hubot hates me/i, (msg) ->
    msg.send msg.random response
    
  robot.hear /come on[,]* hubot/i, (msg) ->
    msg.send msg.random response
    
  robot.hear /where are you hubot/i, (msg) ->
    msg.send msg.random response
