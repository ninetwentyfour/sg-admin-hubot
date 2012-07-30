# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/bow/1.gif"
]

module.exports = (robot) ->
  robot.hear /.*(bow).*/i, (msg) ->
    msg.send msg.random carltons
