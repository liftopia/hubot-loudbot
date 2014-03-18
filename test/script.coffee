chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'script', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @sut = require('../src/script')(@robot)

  it 'hears all', ->
    expect(@robot.hear).to.have.been.calledWith(/.*/)

