# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/money/1.jpg",
  "http://hubot-assets.s3.amazonaws.com/money/2.jpg",
  "http://hubot-assets.s3.amazonaws.com/money/3.gif",
  "http://hubot-assets.s3.amazonaws.com/money/4.jpg",
  "http://hubot-assets.s3.amazonaws.com/money/5.gif",
]

module.exports = (robot) ->
  robot.respond /.*(jon).*/i, (msg) ->
    msg.send msg.random carltons
