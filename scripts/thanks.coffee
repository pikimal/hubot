# Description:
#   Whenever hubot is thanked hubot responds. 
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   Jon Daniel

thanks = [
  "Yay I'm helping! ^-^",
  "I did good?",
  "Anything else I can do?",
  "Squeee!",
  "Yay I'm being useful!",
  "*does a dance*"
]

module.exports = (robot) ->
  robot.hear /(^|\W)[T|t]hanks hubot(\z|\W|$)/i, (msg) ->
    msg.send msg.random thanks
