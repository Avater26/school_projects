const app = require('express')();
const port = process.env.PORT || 3000;
const debug = require('debug')('Kodebase');

require('./config/index.js')(app);
require('./routes/index.js')(app);

app.listen(port, () => {
    console.log(`Website is running on http://localhost:${port}`);
});