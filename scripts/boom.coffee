# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/boom/1.gif",
"http://hubot-assets.s3.amazonaws.com/boom/2.jpg",
"http://hubot-assets.s3.amazonaws.com/boom/3.jpg",
"http://hubot-assets.s3.amazonaws.com/boom/4.gif",

]

module.exports = (robot) ->
  robot.hear /.*(boom|dynamite).*/i, (msg) ->
    msg.send msg.random carltons
