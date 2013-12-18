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
#   Eric - shows a picture of Eric when you summon him
#
# Author:
#   Alaina Cauchie

ericpic = [
  "http://i.imgur.com/osK5X8u.jpg",
  "http://i.imgur.com/O1Ze350.jpg",
  "http://i.imgur.com/7lFZ9Qv.jpg",
  "http://i.imgur.com/1uvQYlR.jpg",
  "http://i.imgur.com/cWbYtDw.jpg",
  "http://i.imgur.com/88qfCnL.jpg",
  "http://i.imgur.com/hiNwAR9.jpg",
  "http://i.imgur.com/X1dNzQk.jpg"
  
]

module.exports = (robot) ->
  robot.hear /(^|\W)[S|s]ummon [E|e]ric(\z|\W|$)/i, (msg) ->
    msg.send msg.random ericpic
