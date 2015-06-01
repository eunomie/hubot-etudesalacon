# Description:
#   Display quote from "Les études à la con <http://etudesalacon.tumblr.com>".
#
# Dependencies:
#   "cheerio": "0.7.0"
#   "he": "0.4.1"
#
# Configuration:
#   None
#
# Commands:
#   hubot {alacon|a la con|à la con} - Returns random quote
#
# Author:
#   Eunomie

cheerio = require('cheerio')
he = require('he')

module.exports = (robot)->
  robot.respond /[aà] ?la ?con/i, (message)->
    send_quote message, 'http://etudesalacon.tumblr.com/random', (text)->
      message.send text

send_quote = (message, location, response_handler)->
  url = location

  message.http(url).get() (error, response, body)->
    return response_handler "Sorry, something went wrong" if error

    if response.statusCode == 302 || response.statusCode == 301
      location = response.headers['location']
      return send_quote(message, location, response_handler)

    $ = cheerio.load(body)
    el = $(".post .centre a").first()
    txt = he.decode el.text()
    link = el.attr('href')

    response_handler "#{txt} [#{link}]"
