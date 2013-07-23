# Description:
#   Returns link to a search page on Webkite's Zendesk support portal
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot help doc <topic> - a topic that you would search for in Zendesk
#
# Author:
#   Alaina

querystring = require 'querystring';

module.exports = (robot) ->
  robot.respond /help doc (.+)/i, (msg) ->
    topic = msg.match[1]
    url = "https://webkite.zendesk.com/categories/search"
    query = {query: topic, for_search: 1, commit: "Search"} 
    msg.send "#{url}?#{querystring.stringify(query)}"
