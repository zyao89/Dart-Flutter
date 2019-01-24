const express = require('express');
const app = express();

app.get('/api/mock', function(req, res) {
    res.json({
        name: '我是 mock',
        path: '/api/mock',
        data: Date.now(),
    });
    res.end();
});

app.use(express.static(process.cwd()));

app.listen(8998);
