const express = require("express");
const app = express();
const port = 3000;
app.get("/", (_, res) => res.send("Hello from CI/CD!"));
app.listen(port, () => console.log(`Server running on port ${port}`));
