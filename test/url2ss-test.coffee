assert = require 'power-assert'
sinon = require 'sinon'

describe 'url2ss', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/url2ss')(@robot)

  it 'registers a respond listener', ->
    asserc.ok(@robot.respond.calledWith(/url2ss (.*)/))
