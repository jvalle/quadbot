# Description
#   The Office Images/Gifs
#
# Dependencies:
#   "cheerio": "0.10.7",
#   "request": "2.14.0"
#
# Configuration:
#   None
#
# Commands:
#   the office - A random image from http://dundermifflinscranton.tumblr.com/
#
#
# Author:
#   FDfranklin
#
request = require 'request'
cheerio = require 'cheerio'
url = "http://dundermifflinscranton.tumblr.com/"

module.exports = (robot) ->

  robot.hear /the office/i, (msg) ->
    request "#{url}?page=#{Math.floor(Math.random() * 8)}", (error, response, body)->
      throw error if error
      $ = cheerio.load(body)
      images = $("div.cont.group img").toArray()
      image = images[Math.floor(Math.random()*images.length)]
      msg.send $(image).attr("src") if image