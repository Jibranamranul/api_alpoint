const response = (stastuscode, data, message, res) => {
    res.status(stastuscode).json([

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

module.exports = response;
