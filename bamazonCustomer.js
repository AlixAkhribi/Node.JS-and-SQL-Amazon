var mysql = require("mysql");
var inquirer = require('inquirer');


var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    user: "root",

    password: "",
    database: "bamazonDB"

});

connection.connect(function (err) {
    if (err) throw err;
    buyItem()
});


function buyItem() {
    connection.query("SELECT * FROM Products", function (err, res) {
        if (err) throw err;
        inquirer
            .prompt([
                {
                    name: "choice",
                    type: "rawlist",
                    choices: function () {
                        var choiceArray = [];
                        for (var i = 0; i < results.length; i++) {
                            choiceArray.push(results.item_id[i]);
                        }
                        return choiceArray;
                    },
                    message: "Item would you like to buy??"
                },
                {
                    name: "Buy",
                    type: "input",
                    message: "How many would you like to buy?"
                }
            ])
            .then(function (answer) {
                var chosenItem;
                for (var i = 0; i < results.length; i++) {
                    if (results[i].item_id === answer.choice) {
                        chosenItem = results[i];
                    }
                }
                

                if (chosenItem.stock_quantity < parseInt(answer.buy)) {

                    connection.query(
                        "UPDATE products SET ? WHERE ?",
                        [
                            {
                                stock_quantity: - answer.buy
                            },
                            {
                                id: chosenItem.id
                            }
                        ],
                        function (error) {
                            if (error) throw err;
                            console.log("Purchase successfull!");
                            start();
                        }
                    );
                }
                else {
                    console.log("Not enough in stock. Try again...");
                    start();
                }
            });
    });
}