# Description:
#   Send e-mail as hubot. 
#
# Dependencies:
#   "sendgrid": "0.2.1"
#
# Configuration:
#   SENDGRID_PASSWORD
#   SENDGRID_USERNAME
#
# Commands:
#   hubot email <user@email.com> -s <subject> -m <message> - Sends email with the <subject> <message> to address <user@email.com>
#
# Author:
#   Jon Daniel 

env = process.env
{SendGrid} = require 'sendgrid'
sendgrid = new SendGrid(env.SENDGRID_USERNAME, env.SENDGRID_PASSWORD)

module.exports = (robot) ->

  robot.respond /email (.*) -s (.*) -m (.*)/i, (msg) ->
    recipients = msg.match[1].split(" ")
    subject = msg.match[2]
    text = msg.match[3] 

    sendgrid.send {
      to: recipients, 
      from: 'hubot@webkite.com',
      subject: subject, 
      text: text 
    }, (success, jsonErrors) ->
         msg.send jsonErrors if !success

    msg.send "email sent"
