const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const path = require('path');
const app = express();

const {getHomePage, getHome} = require('./index.js');
const {AddLotteryPage, AddLottery, AboutPage} = require('./add_lottery');

const port = 5000;

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'lottery'
})

db.connect((err) =>{
    if (err){
        throw err; 
    }
    console.log('Connected...')
})

global.db = db;

app.set('port', process.env.port || port);
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }))
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', getHomePage);
app.post('/', getHome);
app.get('/add', AddLotteryPage);
app.post('/add', AddLottery);
app.get('/about', AboutPage);


app.listen(port, () =>{
    console.log('Server running');
});