const response = (stastuscode, data, message, res) => {
    res.json(stastuscode, [

        {
            playload: data,
            message,
            info: {
                seed: "",
                version: "",
                pages: ""
            }

        }

    ])
}

module.exports = response
