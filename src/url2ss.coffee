# Description
#   Capture a screenshot from url
#
# Configuration:
#   CLOUDINARY_NAME:
#   CLOUDINARY_API_KEY
#   CLOUDINARY_API_SECRET
#
# Commands:
#   hubot cap <url> - Return a image url
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   nekova

cloudinary = require('cloudinary')

Capture = (url) ->
  cloudinary.url url,
    type: "url2png"
    sign_url: true

module.exports = (robot) ->
  robot.respond /cap (.*)$/i, (msg) ->
    cloudinary.config
      cloud_name: process.env.CLOUDINARY_NAME,
      api_key:    process.env.CLOUDINARY_API_KEY,
      api_secret: process.env.CLOUDINARY_API_SECRET

    msg.send Capture(msg.match[1])
