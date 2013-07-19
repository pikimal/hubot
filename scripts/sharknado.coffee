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
#   sharknado - Shows a Sharknado gif
#
# Author:
#   Justin Burdett

sharknado = [
  "https://dl.dropboxusercontent.com/u/233140/sharknado.jpg",
]

module.exports = (robot) ->
  robot.hear /(^|\W)sharknado(\z|\W|$)/i, (msg) ->
    msg.send msg.random sharknado
