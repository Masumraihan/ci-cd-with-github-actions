import express from "express";
const app = express();
const PORT = 1000;

app.get("/", (req, res) => {
  return res.json({
    message: "Hello World",
  });
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
