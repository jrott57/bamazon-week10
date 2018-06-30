var mysql = require('mysql');
var inquirer = require("inquirer");
require("console.table");
var parser = require('parser');

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon"
});

connection.connect(function (err) {
    if (err) throw err;
    start();
});

function start() {

    connection.query('SELECT * FROM products', function (err, res, fields) {
        if (err) {
            throw err;
        }

        console.table(res);

        promptId()
    })
}

function promptId() {
    inquirer
        .prompt({
            name: "input",
            type: "choice",
            message: "What would you like to buy? (Select by typing the ID number.)",
        }).then(function (answer, val) {
            connection.query("UPDATE products SET ? WHERE ?", [{
                    stock_quantity: answer
                }, ],
                function (err, results) {
                    if (err) throw err;
                    console.log("Thank You! Come Again!")
                });
        })
}
