# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/jack_burton/1.gif",
"http://hubot-assets.s3.amazonaws.com/jack_burton/2gif",
"http://hubot-assets.s3.amazonaws.com/jack_burton/3.gif",
"http://hubot-assets.s3.amazonaws.com/jack_burton/4.gif",
"http://hubot-assets.s3.amazonaws.com/jack_burton/5.gif",
"http://hubot-assets.s3.amazonaws.com/jack_burton/6.gif",
]

module.exports = (robot) ->
  robot.hear /(list movies)/i, (msg) ->
    msg.send("i suck");
    # var fs = require('fs');
    # fs.readdir('.', function (err, files) {
    #   if (err)
    #     throw err;
    #   for (var index in files) {
    #     console.log(files[index]);
    #     message.send("i suck");
    #   }
    # });
    exec("cd ~/Desktop; ls -la", function (error, stdout, stderr) {
      #content = stdout;
      msg.send("~/Desktop files: " + stdout)
    });
    # var fs = require('fs');
    # 
    # fs.readdir("~/Desktop", function (err, files) {
    #   if (err) throw err;
    #   # console.log("~/Desktop files: " + files);
    #   msg.send("~/Desktop files: " + files)
    # });
