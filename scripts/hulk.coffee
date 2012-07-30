# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/hulk/1.gif",
  "http://hubot-assets.s3.amazonaws.com/hulk/2.gif",
  "http://hubot-assets.s3.amazonaws.com/hulk/3.gif",
  "http://hubot-assets.s3.amazonaws.com/hulk/4.gif",
  "http://hubot-assets.s3.amazonaws.com/hulk/5.gif",
  "http://hubot-assets.s3.amazonaws.com/hulk/6.gif"

]

module.exports = (robot) ->
  robot.hear /.*(hulk smash|hulk|angry|pissed|smash|rage|destroy).*/i, (msg) ->
    msg.send msg.random carltons
