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
#   Eric - shows a picture of Eric when you greet him
#
# Author:
#   Alaina Cauchie

ericpic = [
  "http://i.imgur.com/osK5X8u.jpg",
  "http://i.imgur.com/Os3TiHF.jpg",
  "http://i.imgur.com/O1Ze350.jpg",
  "http://i.imgur.com/7lFZ9Qv.jpg",
  "http://i.imgur.com/1uvQYlR.jpg",
  "http://i.imgur.com/BCEqACV.jpg",
  "http://i.imgur.com/73pd7Zl.jpg"
  
]

module.exports = (robot) ->
  robot.hear /(^|\W)[H|h]ello Eric(\z|\W|$)/i, (msg) ->
    msg.send msg.random ericpic
