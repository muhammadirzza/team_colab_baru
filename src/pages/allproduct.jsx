import React, { Component } from 'react';
import {connect} from 'react-redux'
// import {Redirect} from 'react-router-dom'
// import {
//     Card, CardBody,
//     CardTitle, CardSubtitle
//   } from 'reactstrap';
import Numeral from 'numeral'
import Axios from 'axios'
import {APIURL} from '../support/ApiUrl'
// import {FaArrowAltCircleRight} from 'react-icons/fa'
import {BukanHome,IniHome} from './../redux/actions/HeaderAction'
// import {FaCartPlus} from 'react-icons/fa'
import {Link} from 'react-router-dom'
import querystring from 'query-string'
// import ProductItem from "./ProductItem"
import { MDBPagination, MDBPageItem, MDBPageNav, MDBCol, MDBRow, MDBNavLink } from "mdbreact";
import {changetoRupiah} from '../support/changetorupiah';
import {capitalfirst, capitalize} from '../support/sentencecase'
import { totalPage } from '../support/date';

class Home extends Component {
    state = {
        products:[],
        searchProducts:0,
        sortname:0,
        sortprice:0,
        page:0,
        loading:true,
        kategori:[],
        activecategory:0,
        kategoriprod:'',
        inputmin:0,
        inputmax:0
    }
    

    componentDidMount(){
        Axios.get(`${APIURL}/product/category`)
        .then((res)=>{
            console.log(res.data)
            this.setState({kategori:res.data})
        })
        .catch((err)=>{
            console.log(err)

        }).finally(()=>{
            this.setState({loading:false})
        })
        this.getData()
        // // console.log(this.props.location.search)
        // var obj = querystring.parse(this.props.location.search)
        // // console.log(obj.page)
        // this.props.IniHome()
        // Axios.get(`${APIURL}/product/getproduct?page=${obj.page}`)
        // .then((res)=>{
        //     // console.log(res.data)
        //     // this.setState({searchProducts:res.data})
        //     // console.log(this.state.products)
        //     Axios.get(`${APIURL}/product/getallproduct`)
        //     .then((resallprod)=>{
        //         // console.log(resallprod.data)
        //         this.setState({
        //             products:resallprod.data, 
        //             searchProducts:res.data,
        //             page:parseInt(obj.page)
        //         })
        //     }).catch((errallprod)=>{
        //         console.log(errallprod)
        //     }).finally(()=>{
        //         this.setState({loading:false})
        //     })
        // }).catch((err)=>{
        //     console.log(err)
        // }).finally(()=>{
        //     this.setState({loading:false})
        // })
    }

    getData = (min, max, cat, sortname, sortprice) => {
        Axios.get(  min||max?`${APIURL}/product/totalproduct?inputMin=${min}&inputMax=${max}`:
                    cat?`${APIURL}/product/totalproduct?cat=${cat}`:
                            `${APIURL}/product/totalproduct`,{}
                    ).then((res)=>{
                    this.setState({searchProducts:res.data.total})
                    Axios.get(  
                                sortname || sortprice?
                                min || max?`${APIURL}/product/getproductuser?inputMin=${min}&inputMax=${max}&page=${this.state.page}&sortname=${sortname}&sortprice=${sortprice}`:
                                cat?`${APIURL}/product/getproductuser?cat=${cat}&page=${this.state.page}&sortname=${sortname}&sortprice=${sortprice}`:
                                        `${APIURL}/product/getproductuser?page=${this.state.page}&sortname=${sortname}&sortprice=${sortprice}`
                                :
                                min || max?`${APIURL}/product/getproductuser?inputMin=${min}&inputMax=${max}&page=${this.state.page}`:
                                cat?`${APIURL}/product/getproductuser?cat=${cat}&page=${this.state.page}`:
                                        `${APIURL}/product/getproductuser?page=${this.state.page}`
                                ).then((res1)=>{
                                    console.log(res1.data, 'line 92')
                                // window.scrollTo(0,0)
                                this.setState({products:res1.data})
                                this.renderKategori()
                            }).catch((err)=>{
                                console.log(err)
                            }).finally(()=>{
                                    this.setState({loading:false})
                               })
                }).catch((err)=>{
                    console.log(err)
                })

    //     // console.log(this.props.location.search)
    //     // var obj = querystring.parse(this.props.location.search)
    //     // console.log(obj.page)
    //     // this.props.IniHome()
    //     Axios.get(`${APIURL}/product/getproduct?page=${this.state.page}`)
    //     .then((res)=>{
    //         // console.log(res.data)
    //         // this.setState({searchProducts:res.data})
    //         // console.log(this.state.products)
    //         Axios.get(`${APIURL}/product/getallproduct`)
    //         .then((resallprod)=>{
    //             // console.log(resallprod.data)
    //             this.setState({
    //                 products:resallprod.data, 
    //                 searchProducts:res.data,
    //                 // page:parseInt(obj.page)
    //             })
    //         }).catch((errallprod)=>{
    //             console.log(errallprod)
    //         }).finally(()=>{
    //             this.setState({loading:false})
    //         })
    //     }).catch((err)=>{
    //         console.log(err)
    //     }).finally(()=>{
    //         this.setState({loading:false})
    //     })

    }

    onCategoryClick=(e)=>{
        var filter=e.target.value
        this.setState({page:0,activecategory:filter,kategoriprod:filter})
        this.renderKategori()
        // console.log(filter)
        this.getData(this.state.inputmin, this.state.inputmax,filter, this.state.sortname, this.state.sortprice)
      
    }

    onnextClick = (tes) => {
        this.setState({
            page:tes
        },
        this.getData()
        )
        console.log(this.state.page)
    }

    renderProducts=()=>{
        return this.state.products.map((val,index)=>{
            return (

                <div className="carousel-cellallprod" key={index} style={{margin:'10px'}}>
                    <Link className="position-rel display-block" to={`/detailprod/${val.idproduct}`}>
                        <img className="product" src={APIURL+val.image} alt=""/>
                        <div className="product-name">{capitalize(val.name)}</div>
                        <div className="product-author">
                            <a>{capitalize(val.author)}</a>
                        </div>
                        <div className="price-container">
                            <div className="display-clock ribbon-image">
                                <div className="ribbon-image-title">
                                    <span className="ribbon-image-title-text"></span>
                                </div>
                            </div>
                            <div className="display-block ribbon-image-discount">
                                <div className="ribbon-image-box-discount">
                                    <div className="ribbon-image-price-promobox">
                                        <p className="ribbon-image-price-disc">
                                            {changetoRupiah(val.price)},00
                                        </p>
                                        <span className="ribbon-image-price-percent">
                                            15%
                                        </span>
                                    </div>
                                    <div className="ribbon-image-price-get-discount">
                                        {changetoRupiah(val.price)},00
                                    </div>
                                </div>
                            </div>
                        </div>
                    </Link>
                </div>
            )
        })
    }

    renderKategori = () => {
        return this.state.kategori.map((val,index)=>{
            return (
                <button className="btn btn-sm btn-block btn-warning"
                    value={val.idcategory}
                    onClick={this.onCategoryClick}
                    // active={parseInt(this.state.activecategory)===val.id}
                >
                    {val.name}
                </button>
            )
        })
    }

    getPage = (pagination) => {
        this.setState({page:pagination*8, loading:true}, function(){
            this.getData(this.state.inputmin, this.state.inputmax, this.state.activecategory, this.state.sortname, this.state.sortprice)
        })
    }

    renderPage = () => {
        if(this.state.loading) {
            
        } else {
            var totalpage = Math.ceil(this.state.searchProducts/8)

            var pagination=[]

            for (let index = 0; index < totalpage; index++) {
                pagination.push(
                    <MDBPageItem key={index} active={index===this.state.page/8} onClick={()=>this.getPage(index)}>
                        {/* <Link to={`/allproduct?page=${index+1}`}> */}
                            <MDBPageNav >
                                <span style={{color:((index)===this.state.page/8)?'white':'grey'}}>{index+1}</span>                          
                            </MDBPageNav>
                        {/* </Link> */}
                    </MDBPageItem>
                )
                // console.log(tesitem)
            }
                
            return(
                pagination
            )
            // const element = array[index];            
        }
    } 

    onSearchClick=()=>{
        // let inputMin=this.min.value
        let inputMin=parseInt(this.min.value)
        let inputMax=parseInt(this.max.value)

        // var search = {
        //     inputMin:inputMin,
        //     inputMax:inputMax
        // }
        console.log(inputMin)
        // console.log(search)
        this.setState({inputmin:inputMin, inputmax:inputMax})


        this.getData(inputMin, inputMax, this.state.kategoriprod, this.state.sortname, this.state.sortprice)


        // let hasilFilterHarga=this.state.searchProducts.filter((product)=>{
            
        //         if (!inputMax && !inputMin){
        //             return this.state.searchProducts.filter
        //         } if (inputMax && inputMin) {
        //             return (product.price>=inputMin && product.price<=inputMax)
        //         } if (inputMax && !inputMin){
        //             return (product.price<=inputMax)
        //         } if (!inputMax && inputMin){
        //             return (product.price>=inputMin)
        //         }
        // })

        // this.setState({searchProducts:hasilFilterHarga})
    }

    onResetClick=()=>{
        this.min.value=''
        this.max.value=''
        this.setState({
            sortname:0,
            sortprice:0,
            activecategory:0,
            inputmin:0,
            inputmax:0,
            page:0
        })
        this.getData()
    }

    onSortName=()=>{
        // this.setState({sortname:!this.state.sortname})
        if (!this.state.sortname){
            this.getData (this.state.inputmin, this.state.inputmax, this.state.kategoriprod, 1, null)
            // var hasilFilter=this.state.searchProducts.sort(this.urutHuruf)
            // this.setState({searchProducts:hasilFilter})
            this.setState({sortname:1})

        } if (this.state.sortname){
            this.getData (this.state.inputmin, this.state.inputmax,this.state.kategoriprod, 2, null)

            // var hasilFilter=this.state.searchProducts.sort(this.urutHurufDes)
            // this.setState({searchProducts:hasilFilter})
            this.setState({sortname:0})
        // this.getData (null, null, this.state.sortname, null)

        }
        // this.getData (null, null, this.state.sortname, null)
        console.log(this.state.sortname)
    }

    onSortHarga=()=>{
        if (!this.state.sortprice){
            this.getData (this.state.inputmin, this.state.inputmax, this.state.kategoriprod, null, 1)
            // var hasilFilter=this.state.searchProducts.sort(this.urut)
            // this.setState({searchProducts:hasilFilter})
            this.setState({sortprice:1})
            // console.log(this.state.sortprice)
        } if (this.state.sortprice){
            this.getData (this.state.inputmin, this.state.inputmax, this.state.kategoriprod, null, 2)
            // var hasilFilter=this.state.searchProducts.sort(this.urutDes)
            // this.setState({searchProducts:hasilFilter})
            this.setState({sortprice:0})
            // this.getData (null, null, this.state.sortprice, null)
        }


    }

    // renderList=()=>{
    //     return this.state.searchProducts.map((product)=>{
    //         return(
    //             <ProductItem barang={product} key={product.id}/>
    //         )
            
    //     })  
    // }


    render() {
        if (this.state.loading) {
            return(
                <div>loading ....</div>
            )
        }
        return (
            <div style={{marginTop:"4%"}}>
                {/* <div className="col-md-3" style={{marginTop:"4%"}}></div> */}
                <div className="container">
                    <div className="row">
                        {/* div untuk search  */}
                            <div className="col-3">
                                <div className="card mt-5 p-3 shadow-sm mr-2">
                                    <div className="card-title border-bottom border-white">
                                        <h3 className="d-inline">Produk Filter</h3>
                                    </div>
                                    <form className="form-group mb-0 mx-2">
                                        {/* <h5>Name :</h5>
                                        <input onChange={this.onSearchClick} 
                                        ref={(input)=>{this.name=input}} 
                                        className="form-control my-3 btn-light" placeholder="product" type="text" name="" id=""/> */}
        
                                        {/* <h5>Category :</h5>
                                        <input onChange={this.onSearchClick} 
                                        ref={(input)=>{this.kat=input}} 
                                        className="form-control my-3 btn-light" placeholder="category" type="text" name="" kat=""/> */}
        

                                        <h5>Harga :</h5>
                                        <input onChange={this.onSearchClick} 
                                        ref={(input)=>{this.min=input}} 
                                        className="form-control btn-light" placeholder="minimum" type="text" name="" id=""/>
                                        <input onChange={this.onSearchClick} 
                                        ref={(input)=>{this.max=input}} 
                                        className="form-control my-3 btn-light" placeholder="maximum" type="text" name="" id=""/>
                                    </form>
                                    <div className="d-inline-block align-bottom text-right">
                                        <button onClick={this.onResetClick} className="btn btn-block btn-sm btn-secondary">Refresh</button>
                                    </div>
                                </div>
                                <div className="card mt-2 p-3 shadow-sm mr-2">
                                    <div className="card-title border-bottom border-white">
                                        <h3 className="d-inline">Kategori</h3>
                                    </div>
                                    <div className="mx-2">
                                        {this.renderKategori()}
                                        {/* <button onClick={this.onSortName} className="btn btn-sm btn-block btn-warning">Product Name</button> */}
                                        {/* <button onClick={this.onSortCategory} className="btn btn-sm btn-block btn-warning">Product Category</button> */}
                                        {/* <button onClick={this.onSortHarga} className="btn btn-sm btn-block btn-warning">Product Price</button> */}
                                    </div>
                                </div>
                                <div className="card mt-2 p-3 shadow-sm mr-2">
                                    <div className="card-title border-bottom border-white">
                                        <h3 className="d-inline">Sort by</h3>
                                    </div>
                                    <div className="mx-2">
                                        <button onClick={this.onSortName} className="btn btn-sm btn-block btn-warning">Product Name</button>
                                        {/* <button onClick={this.onSortCategory} className="btn btn-sm btn-block btn-warning">Product Category</button> */}
                                        <button onClick={this.onSortHarga} className="btn btn-sm btn-block btn-warning">Product Price</button>
                                    </div>
                                </div>
                            </div>
        
                        {/* div untuk list */}
                            <div className="col-9 row mt-5 p-0" style={{height:"30px"}}>
                                <div className="col-12 display-10 text-left mb-2 shadow-sm p-2 card ">Produk ke {(this.state.page/8*8)+1} - {(this.state.page/8+1)*8 > this.state.searchProducts?totalPage((this.state.page/8+1)*8, this.state.searchProducts) : (this.state.page/8+1)*8 } dari {this.state.searchProducts}</div>
                                    {/* {this.renderList()} */}
                                <div className="items-sectionallprod" style={{marginBottom:'5%'}}>
                                    <div className="item">
                                        <div className="carousel-containerallprod">
                                            <div className="viewportallproduct">                                                    
                                                {this.renderProducts()}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <MDBPagination circle style={{marginTop:'40px'}}>
                                        <MDBPageItem disabled={this.state.page===0}>
                                            <MDBPageNav className="page-link" onClick={()=>this.getPage(0)}>
                                                First
                                            </MDBPageNav>
                                        </MDBPageItem>
                                        <MDBPageItem disabled={this.state.page===0}>
                                            <MDBPageNav className="page-link" aria-label="Previous" onClick={()=>this.getPage((this.state.page/8)-1)}>
                                            <span aria-hidden="true">&laquo;</span>
                                            <span className="sr-only">Previous</span>
                                            </MDBPageNav>
                                        </MDBPageItem>
                                        {
                                            this.renderPage()
                                        }
                                        <MDBPageItem disabled={(this.state.page/8+1)===Math.ceil(this.state.searchProducts/8)}>
                                            <MDBPageNav className="page-link" onClick={()=>this.getPage((this.state.page/8)+1)}>
                                            &raquo;
                                            </MDBPageNav>
                                        </MDBPageItem>
                                        <MDBPageItem disabled={this.state.page===Math.ceil(this.state.searchProducts/8)}>
                                            <MDBPageNav className="page-link" onClick={()=>this.getPage(Math.ceil(this.state.searchProducts/8-1))}>
                                                Last
                                            </MDBPageNav>
                                        </MDBPageItem>
                                    </MDBPagination>    
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        )
    }
}

const MapstatetoProps=({Auth})=>{
    return{
        islogin:Auth.islogin
    }
}

export default connect(MapstatetoProps,{BukanHome,IniHome}) (Home);