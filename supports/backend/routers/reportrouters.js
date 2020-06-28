const express=require('express')
const {Reportcontrollers}=require('./../controllers')

const router=express.Router()

router.get('/famous',Reportcontrollers.getFamousProduct)


module.exports=router
