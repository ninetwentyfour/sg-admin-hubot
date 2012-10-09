HUBOT_JENKINS_URL = "http://localhost:8080"
#HUBOT_JENKINS_AUTH = "63b5811076cf31ae7e92d8e0b87ebf88"
#HUBOT_JENKINS_AUTH = "ninetwentyfour:221westwood"

# Interact with your jenkins CI server, assumes you have a parameterized build
# with the branch to build as a parameter
#
# You need to set the following variables:
#   HUBOT_JENKINS_URL = "http://ci.example.com:8080"
# 
# The following variables are optional
#   HUBOT_JENKINS_JOB - if not set you will have to specify job name every time
#   HUBOT_JENKINS_BRANCH_PARAMETER_NAME - if not set is assumed to be BRANCH_SPECIFIER
#
# build branch master -- starts a build for branch origin/master
# build branch master on job Foo -- starts a build for branch origin/master on job Foo
hackers = [
  "http://hubot-assets.s3.amazonaws.com/science/1.gif",
  "http://hubot-assets.s3.amazonaws.com/science/2.gif",
  "http://hubot-assets.s3.amazonaws.com/science/3.gif",
  "http://hubot-assets.s3.amazonaws.com/science/4.gif",
  "http://hubot-assets.s3.amazonaws.com/science/5.gif",
  "http://hubot-assets.s3.amazonaws.com/science/6.gif",
  "http://hubot-assets.s3.amazonaws.com/science/7.gif",
  "http://hubot-assets.s3.amazonaws.com/science/8.gif",
  "http://hubot-assets.s3.amazonaws.com/science/9.gif",
  "http://hubot-assets.s3.amazonaws.com/science/10.gif"
]

module.exports = (robot) ->
  robot.respond /build branch (.+) on job (.+)/i, (msg)->

    # url = process.env.HUBOT_JENKINS_URL
    # job = msg.match[5]
    branch = msg.match[1]
    branch = "origin/#{branch}" unless ~branch.indexOf("/")
    job = msg.match[2]
    job_parameter = "BRANCH_SPECIFIER"
    # 
    # branch = msg.match[2]
    # branch = "origin/#{branch}" unless ~branch.indexOf("/")
    # 
    json_val = JSON.stringify {"parameter": [{"name": job_parameter, "value": branch}]}
    path = "http://192.168.50.42:8080/job/#{job}/build"
    msg.http("http://192.168.50.42:8080/job/#{job}/build")
    #msg.http("http://192.168.50.42:8080/job/boss/build")
      .query(json: json_val)
      .post() (err, res, body) ->
        if err
          msg.send path
          msg.send "Jenkins says: #{err}"
        else if res.statusCode == 302
              msg.send "Build started for #{branch}! #{res.headers.location}"
              msg.send msg.random hackers
            else
              msg.send path
              msg.send "Jenkins says: #{body}"