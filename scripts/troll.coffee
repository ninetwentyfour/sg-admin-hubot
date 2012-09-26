# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/troll/1.jpg"

]

module.exports = (robot) ->
  robot.respond /.*(troll|trollface).*/i, (msg) ->
    msg.send msg.random carltons
