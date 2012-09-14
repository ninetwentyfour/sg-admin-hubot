# Carlton Celebration
#
# lol - Display a dancing Carlton
#

lols = [
  "http://hubot-assets.s3.amazonaws.com/lol/1.gif",
  "http://hubot-assets.s3.amazonaws.com/lol/2.gif",
  "http://hubot-assets.s3.amazonaws.com/lol/3.gif",
  "http://hubot-assets.s3.amazonaws.com/lol/4.gif",
  "http://hubot-assets.s3.amazonaws.com/lol/5.gif",
  "http://hubot-assets.s3.amazonaws.com/lol/6.gif",
  "http://hubot-assets.s3.amazonaws.com/lol/7.gif",
  "http://hubot-assets.s3.amazonaws.com/lol/8.gif",
  "http://hubot-assets.s3.amazonaws.com/lol/9.gif",
  "http://hubot-assets.s3.amazonaws.com/lol/10.gif"
]

module.exports = (robot) ->
  robot.respond /.*(lol|lul|lolz|lulz).*/i, (msg) ->
    msg.send msg.random lols
