# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/badass/1.png"

]

module.exports = (robot) ->
  robot.hear /.*(badass).*/i, (msg) ->
    msg.send msg.random carltons
