module.exports = {
    getHomePage: (req, res) =>{
        var query = "SELECT * FROM db_lottery";

        let id_r = req.body.round_form;
        let lot = req.body.lname;
        db.query(query, (err, result) => {
            if (err){
                res.redirect('/');
            }
            
            res.render('index.ejs', {
                title: 'Check Lottery',
                round: result,
                answer: lot
            })
        });
    },
    getHome: (req, res) =>{

        var query = "SELECT * FROM db_lottery";

        let id_r = req.body.round_form;
        let lot = req.body.lname;
        
        db.query(query, (err, result) => {
            if (err){
                res.redirect('/');
            }
            
        });

    },

}

