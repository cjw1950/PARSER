const fs = require("fs");
const filename = process.argv[2];
var theData;
const mongoose = require("mongoose");

mongoose
  .connect("mongodb://localhost:27017/shareAsale")
  .then(() => console.log("Connected…"))
  .catch(err => console.error("Connection failed…"));

if (!filename) {
  console.log("filename not found for processing");
} else {
  fs.readFile(filename, (err, data) => {
    if (err) {
      console.error("\nfile note for" + err);
    }
    p=JSON.parse(data);
    d =JSON.stringify(p);
    console.log(data.toString());
    //theData =data.toString();
  });
}
