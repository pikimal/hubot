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
#   ready to release - we're ready to release 
#
# Author:
#   Jon Daniel

module.exports = (robot) ->
  robot.hear /(^|\W)ready to release(\z|\W|$)/i, (msg) ->
    msg.send "http://i.imgur.com/F94COY7.png" 
