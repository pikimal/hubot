# Description:
#   Hubot tells it like it is.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#

module.exports = (robot) ->
  robot.hear /(^|\W)Grant(\z|\W|$)/i, (msg) ->
    if ((Math.floor(Math.random() * 6) + 1) == 1)
      msg.send "Grant T. Olson is the kindest, bravest, warmest, most wonderful human being I've ever known in my life."
