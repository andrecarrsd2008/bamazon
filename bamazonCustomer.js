require("console.table");
var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'bamazon_db',
  port: 3306,
});
 
connection.connect();
 
connection.query('SELECT * from products where stock_quantity > 0', function (error, results, fields) {
  if (error) throw error;
  console.table(results);
});
 
connection.end();