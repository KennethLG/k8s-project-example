const express = require('express');
const axios = require('axios');
const app = express();
app.use(express.json());

const ECHO_SERVICE_URL = 'http://echo-service.echo-namespace.svc.cluster.local:80';

app.post('/api', async (req, res) => {
    try {
        const response = await axios.post(`${ECHO_SERVICE_URL}/echo`, req.body);
        res.send({
            message: 'gateway working correctly',
            data: response.data
        });
    } catch (error) {
        res.status(500).send('Error contacting echo service');
    }
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Gateway service running on port ${PORT}`));
