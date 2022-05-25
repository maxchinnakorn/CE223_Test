module.exports = {
    AddLotteryPage: (req, res) => {
        res.render('add_lottery.ejs',{
            message:"",
            title: "lottery"
        });

    },
    AddLottery: (req, res) => {
        let round = req.body.round;
        let reward_one1 = req.body.one;
        let reward_two1 = req.body.two;
        let reward_three1 = req.body.three;

            let db_add = "INSERT INTO `db_lottery`(`lottery_round`, `reward_one`, `reward_two`, `reward_three`) VALUES ('"+round+"','"+reward_one1+"','"+reward_two1+"','"+reward_three1+"')";
            db.query(db_add, (err, data) => {
                if (err){
                    return res.status(500).send(err);
                }

                res.redirect('/');
            });
            
    },
    AboutPage: (req, res) => {
        res.render('about.ejs', {
            title: "lottery",
            message: ''
        });
    }
}