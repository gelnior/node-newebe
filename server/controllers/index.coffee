module.exports.main = (req, res) ->
    locale = "en"
    if err? then res.send
        error: 'Server error occurred while retrieving data'
        stack: err.stack
    else
        res.render 'index.jade', imports: """
            window.locale = "#{locale}";
        """
