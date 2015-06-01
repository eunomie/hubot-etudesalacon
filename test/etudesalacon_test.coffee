chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'etudesalacon', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/etudesalacon')(@robot)

  it 'registers respond listeners', ->
    expect(@robot.respond.args[0][0].toString()).to.equal("/alacon/i")
    expect(@robot.respond.args[1][0].toString()).to.equal("/a la con/i")
    expect(@robot.respond.args[1][0].toString()).to.equal("/à la con/i")
