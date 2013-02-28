# Description:
#   Corrects us every time we call a Kite a Piki.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   Jon Daniel 

module.exports = (robot) ->
  piki_counter = 0

  robot.hear /\b[P|p][I|i][K|k][I|i](([\.|\?|\!]*)(\s|$))/, (msg) ->
    if piki_counter == 4
      piki_counter = 0
      msg.send "Seriously? Are you from the past?"      
    else
      piki_counter += 1
      msg.send "Don't you mean Kite?"
