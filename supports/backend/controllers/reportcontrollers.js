const { db } = require('../connections')
const { uploader } = require('../helper/upload')
const fs = require('fs')

module.exports={
    getFamousProduct: (req,res) =>{
        var sql = `select p.name, p.image, p.price, a.author, c.name as catname from products p 
                    join categories c on p.idcategory=c.idcategory
                    join authors a on p.author_id=a.author_id
                    where p.is_seen > 0 order by p.is_seen desc limit 5`
        db.query(sql, (err,result) => {
            console.log(result, 'reportcontrollers 11')
            if(err) res.status(500).send({err,message:'error get product search'})
            return res.status(200).send(result)
        })
    }
}