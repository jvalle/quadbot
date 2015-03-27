# Description:
#   A standard reply for anything chi says.
#
# Commands:
#   hubot chiwut - Reply with chi lol wut picture

module.exports = (robot) ->
  robot.respond /CHIWUT$/i, (msg) ->
    msg.send "http://i.imgur.com/X23Td3F.jpg"