expect = require('chai').expect
request = require 'request-json-light'
server = require '../server'

describe 'Auth', ->

    before (done) ->
        @client = request.newClient 'http://localhost:8282'
        server.start silent: true, done

    # We don't manage auth yet. So user should always be considered as logged.
    it 'should always be logged in ', (done) ->

        testReturnIsOk = (err, res, body) ->
            expect(body.registered).to.be.ok
            expect(body.password).to.be.ok
            expect(body.authenticated).to.be.ok
            done()

        @client.get '/user/state', testReturnIsOk
