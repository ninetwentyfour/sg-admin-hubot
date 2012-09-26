# Troll Face
#
# troll - Display trollface
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/troll/1.jpg"

]

module.exports = (robot) ->
  robot.respond /.*(troll\s|\stroll|^troll$).*/i, (msg) ->
    msg.send msg.random carltons
