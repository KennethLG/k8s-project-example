const express = require('express');
const app = express();
const prefix = process.env.RESPONSE_PREFIX

app.use(express.json()); // Middleware to parse JSON bodies

// Define the POST route for echo
app.post('/echo', (req, res) => {
    res.json({
        message: `${prefix} working correctly`,
        data: req.body
    }); // Sends back the JSON body received
});


const port = process.env.PORT || 3000;
app.listen(port, '0.0.0.0', () => {
    console.log(`${prefix} service running on port ${port}`);
    console.log()
});