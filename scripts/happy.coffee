# Description:
#   How gay
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot how gay is <name>
#
# Author:
#   fdfranklin

gayness = [
  "on a scale of 1-10 I'd give him a 1"
  "on a scale of 1-10 I'd give him a 2"
  "on a scale of 1-10 I'd give him a 3"
  "on a scale of 1-10 I'd give him a 4"
  "on a scale of 1-10 I'd give him a 5"
  "on a scale of 1-10 I'd give him a 6"
  "on a scale of 1-10 I'd give him a 7"
  "on a scale of 1-10 I'd give him a 8"
  "on a scale of 1-10 I'd give him a 9"
  "on a scale of 1-10 I'd give him a 10"
  "Extremely"
  "Not very gay at all"
]

module.exports = (robot) ->
  robot.respond /(how gay is)(.*)/i, (msg) ->
    msg.reply msg.random gayness