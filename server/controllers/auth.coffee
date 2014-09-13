module.exports =

    state: (req, res, next) ->

        userState =
            registered: true
            password: true
            authenticated: true

        res.send userState
