# Description:
#   Hubot responds when people use the word "lame"
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   Alaina Cauchie

lameresponse = [
  "YOU'RE LAME!",
  "Lame is as lame does",
  "Your momma is lame",
  "Lame is the name of the game",
  "You're to blame if something's lame.",
  "Your name is lame.",
  "Who's to blame when things are lame?",
  "You're to blame if something's lame.",
  "Pbbbbbbbbbbbt YOU are the lame one :P"
]

module.exports = (robot) ->
  robot.hear /(^|\W)[L|l]ame(\z|\W|$)/i, (msg) ->
    msg.send msg.random lameresponse
