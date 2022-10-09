var express = require ('express');
var http = require('http');
const { append } = require('express/lib/response');
var app = express();
var mysql = require('mysql');
var pool = mysql.createConnection({
host:"localhost",
user:"root",
password:"root",
database:"crud_operation"
});
app.post ('/alldetails', (req,res)=>{

pool.query('select * from user_details', function(err, result, fields){
    if (err){
     console.log(err);
     res.send(err)
    }
     console.log(result)
     res.send(result);
})});

app.get ('/getdetails', (req,res)=>{
    
pool.query('select * from user_details', function(err, result, fields){
        if (err){
         console.log(err);
         res.send(err)
        }
         console.log(result)
         res.send(result);
      })});

app.delete ('/deletedetails', (req,res)=>{
    
        pool.query('select * from user_details delete where ID=12', function(err, result, fields){
            if (err){
             console.log(err);
             res.send(err)
            }
             console.log(result)
             res.send(result);
          })});
          
app.listen(8080, ()=>{
console.log('express is started')
});
