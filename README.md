# hubot-url2ss
[![NPM version][npm-image]][npm-url] [![Build Status][travis-image]][travis-url] [![Dependency Status][daviddm-url]][daviddm-image]

***This scripts depends on Heroku and Cloudinary of Heroku's add-on***  

Capture a screenshot from url

See [`src/url2ss.coffee`](src/url2ss.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-url2ss --save`

Then add **hubot-url2ss** to your `external-scripts.json`:

```json
["hubot-url2ss"]
```

##Configuration
```
cloud_name: CLOUDINARY_NAME
api_key:    CLOUDINARY_API_KEY
api_secret: CLOUDINARY_API_SECRET
```

## Sample Interaction

```
nekova> hubot cap https://github.com
hubot> http://res.cloudinary.com/CLOUD_NAME/image/url2png/XXXXXXXX/https://github.com
```

[npm-url]: https://npmjs.org/package/hubot-url2ss
[npm-image]: http://img.shields.io/npm/v/hubot-url2ssy.svg?style=flat
[travis-url]: https://travis-ci.org/nekova/hubot-url2ss
[travis-image]: http://img.shields.io/travis/nekova/hubot-url2ss/master.svg?style=flat
[daviddm-url]: https://david-dm.org/nekova/hubot-url2ss.svg?theme=shields.io
[daviddm-image]: http://img.shields.io/david/nekova/hubot-url2ss.svg?style=flat
[coveralls-url]: https://coveralls.io/r/nekova/hubot-url2ss
[coveralls-image]: http://img.shields.io/coveralls/nekova/hubot-url2ss/master.svg?style=flat
