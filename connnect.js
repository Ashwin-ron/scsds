var express = require ('express');
var app = express();
var http = require('http');
http.createServer(function(req,res){
    fs.readFile('app.js', function(err, data) {
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.write(data);
        return res.end();
    });
    });
app.listen(8080, ()=>{
        console.log('express is started')
        });
module.export=app
