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
#
# Author:
#   Jon Daniel 

module.exports = (robot) ->
  sigh_counter = 0

  robot.hear /[P|p][I|i][K|k][I|i](\b)/, (msg) ->
    msg.send "Don't you mean Kite?"
