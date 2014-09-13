# See documentation on https://github.com/frankrousseau/americano#routes

index = require './index'
auth = require './auth'

module.exports =
    '':
        get: index.main

    'user/state':
        get: auth.state
