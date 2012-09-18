# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/bro/1.jpg",
  "http://hubot-assets.s3.amazonaws.com/bro/2.jpg",
  "http://hubot-assets.s3.amazonaws.com/bro/3.jpg",
  "http://hubot-assets.s3.amazonaws.com/bro/4.jpg",
  "http://hubot-assets.s3.amazonaws.com/bro/5.jpg",
  "http://hubot-assets.s3.amazonaws.com/bro/6.jpg",
  "http://hubot-assets.s3.amazonaws.com/bro/7.gif",
  "http://hubot-assets.s3.amazonaws.com/bro/8.gif",
  "http://hubot-assets.s3.amazonaws.com/bro/9.gif",
  "http://hubot-assets.s3.amazonaws.com/bro/10.gif"

]

module.exports = (robot) ->
  robot.respond /.*(bro|brother).*/i, (msg) ->
    msg.send msg.random carltons
