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
#   make it so - Show make it so
#
# Author:
#   Justin Burdett

make_it_so = [
  "http://i.imgur.com/MFnfFRm.jpg",
  "http://i.imgur.com/ZzHqKz1.jpg"
]

module.exports = (robot) ->
  robot.hear /(^|\W)make it so(\z|\W|$)/i, (msg) ->
    msg.send msg.random make_it_so
