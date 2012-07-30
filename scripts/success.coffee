# Carlton Celebration
#
# dance - Display a dancing Carlton
#

module.exports = (robot) ->
  robot.hear /.*(Success).*/i, (msg) ->
    msg.send "http://hubot-assets.s3.amazonaws.com/success-kid.jpg"
