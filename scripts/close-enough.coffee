# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   close enough - Show close enough 
#
# Author:
#   Jon Daniel

close_enough = [
  "http://i.imgur.com/nCqq9.png",
  "http://i.imgur.com/Z6GSD.jpg",
  "http://i.imgur.com/n3EFA.jpg"
]

module.exports = (robot) ->
  robot.hear /(^|\W)close enough(\z|\W|$)/i, (msg) ->
    msg.send msg.random close_enough
