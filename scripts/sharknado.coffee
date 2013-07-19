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
  "https://dl.dropboxusercontent.com/u/233140/0b549aaa-f0ae-11e2-9096-ed37edba1f5e.gif"
]

module.exports = (robot) ->
  robot.hear /(^|\W)sharknado(\z|\W|$)/i, (msg) ->
    msg.send msg.random sharknado
