# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/fuck-yeah/1.gif",
  "http://hubot-assets.s3.amazonaws.com/fuck-yeah/2.gif",
  "http://hubot-assets.s3.amazonaws.com/fuck-yeah/3.gif",
  "http://hubot-assets.s3.amazonaws.com/fuck-yeah/4.gif",
  "http://hubot-assets.s3.amazonaws.com/fuck-yeah/5.gif",
  "http://hubot-assets.s3.amazonaws.com/fuck-yeah/6.gif",
  "http://hubot-assets.s3.amazonaws.com/fuck-yeah/7.gif"


]

rand = [1..5]

module.exports = (robot) ->
  robot.hear /.*(fuck yeah|awesome|nice).*/i, (msg) ->
    if rand.random == 1
      msg.send msg.random no_fucks
