# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/alot/1.png"

]

module.exports = (robot) ->
  robot.hear /.*(alot).*/i, (msg) ->
    msg.send msg.random carltons
