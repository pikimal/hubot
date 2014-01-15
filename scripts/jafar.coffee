# Description:
#   Jafar!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   jafar - hubot says 'The universe is mine to command! To control!'
#
# Author:
#   greg

module.exports = (robot) ->
  robot.hear /(^|\W)jafar(\z|\W|$)/i, (msg) ->
    if Math.random() < 0.3 then msg.reply 'The universe is mine to command! To control!'
