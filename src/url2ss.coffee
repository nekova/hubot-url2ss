# Description
#   Render a screenshot of url using Heroku add-on
#
# Configuration:
#   CLOUD_NAME
#   CLOUD_API_KEY
#   CLOUD_API_SECRET
#
# Commands:
#   hubot url2ss <url> - Return a image url
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   nekova[@<org>]

cloudinary = require('cloudinary')

screenCapture = (url) ->
  cloudinary.url url,
    type: "url2png"
    sign_url: true

module.exports = (robot) ->
  robot.respond /url2ss (.*)$/i, (msg) ->
    cloudinary.config
      cloud_name: process.env.CLOUD_NAME,
      api_key:    process.env.CLOUD_API_KEY,
      api_secret: process.env.CLOUD_API_SECRET

    msg.send screenCapture(msg.match[1])
