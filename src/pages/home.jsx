import React, { Component } from 'react';
import './home.css'
import { MDBCarousel, MDBCarouselInner, MDBCarouselItem, MDBView, MDBContainer } from
    "mdbreact";
import { Link, Redirect } from 'react-router-dom';
import Axios from 'axios';
import { APIURL } from '../support/ApiUrl';
import { connect } from 'react-redux';
import { signOut, searchbuku } from '../redux/actions'
import { changetoRupiah } from '../support/changetorupiah';
import { capitalfirst, capitalize } from '../support/sentencecase'
// import {Redirect} from 'react-router-dom';


class Home extends Component {
    state = {
        products: [],
        bukuterpopuler: [],
        novelpalinglaris: [],
        komikpilihan: [],
        categories: [],
        discounts: [],
        search: undefined,
        loading: true
    }

    componentDidMount() {
        Axios.get(`${APIURL}/product/getprod`)
            .then((res) => {
                console.log(res.data)
                this.setState({ categories: res.data.category, products: res.data.product, discounts: res.data.discount })
                Axios.get(`${APIURL}/product/discount`)
                    .then((resdiskon) => {
                        console.log(resdiskon.data)
                        this.setState({
                            // discounts: resdiskon.data
                            // page: parseInt(obj.page)
                        })
                        // this.props.SortNama(true)
                        console.log(this.props.Filter)
                    }).catch((errallprod) => {
                        console.log(errallprod)
                    }).finally(() => {
                        this.setState({ loading: false })
                    })
            }).catch((err) => {
                console.log(err)

            }).finally(() => {
                this.setState({ loading: false })
            })
        this.getHomeProducts()

        // this.getData()
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

    getHomeProducts = () => {
        Axios.get(`${APIURL}/product/producthome`)
            .then((res) => {
                console.log(res.data.komik)
                this.setState({ novelpalinglaris: res.data.novel, komikpilihan: res.data.komik })
            })
            .catch((err) => {
                console.log(err)

            }).finally(() => {
                this.setState({ loading: false })
            })
    }

    renderbannerdiskon = () => {
        return this.state.discounts.map((val, index) => {
            return (
                <Link to={`/diskonprod/${val.discount_id}`} >
                    < MDBCarouselItem key={index} itemId={index + 1}>
                        <MDBView>
                            <img
                                className=""
                                src={APIURL + val.image}
                                alt={val.type}
                            />
                        </MDBView>
                    </MDBCarouselItem>
                </Link>
            )
        })
    }

    renderCategory = (category) => {
        return category.map((val, index) => {
            return (
                <div key={index} className="carousel-cell">
                    <Link to={`/detailprod/${val.idproduct}`}>
                        < a className="position-rel display-block" >
                            <img className="product" src={APIURL + val.image} alt={val.name} />
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
                                        {val.discount_rate === null ?
                                            <div className="ribbon-image-price-promobox">
                                                <p className="ribbon-image-price-normal">
                                                    {changetoRupiah(val.price)},00
                                            </p>
                                                <span className="ribbon-image-normal-percent">
                                                    {val.discount_rate}
                                                </span>
                                            </div>
                                            :
                                            <div className="ribbon-image-price-promobox">
                                                <p className="ribbon-image-price-disc">
                                                    {changetoRupiah(val.price)},00
                                            </p>
                                                <span className="ribbon-image-price-percent">
                                                    {val.discount_rate}%
                                            </span>
                                            </div>
                                        }
                                        {
                                            val.discount_rate === null ?
                                                <div className="ribbon-image-price-get-discount">
                                                    {changetoRupiah(val.price)},00
                                            </div>
                                                :
                                                <div className="ribbon-image-price-get-discount">
                                                    {changetoRupiah(val.price - (val.discount_rate * val.price / 100))},00
                                            </div>
                                        }
                                    </div>
                                </div>
                            </div>
                        </a>
                    </Link>
                </div>
            )
        })
    }

    renderdiscounttoadd = () => {
        return this.state.discounts.map((val, index) => {
            return <option key={index} value={val.discount_id}>{val.type}</option>
        })
    }

    render() {
        const { komikpilihan, novelpalinglaris, bukuterpopuler } = this.state
        return (
            <div className="home-container">
                <div className="inner-home-container">
                    <div className="home-banner">Lihat Semua</div>
                    <div className="promo-carousel">
                        <div>
                            <MDBContainer >
                                <MDBCarousel
                                    activeItem={1}
                                    length={this.state.discounts.length}
                                    showControls={true}
                                    showIndicators={true}
                                    className="z-depth-1 banner-main"
                                >
                                    {this.renderbannerdiskon()}
                                    {/* <MDBCarouselInner>
                                        <MDBCarouselItem itemId="1">
                                            <MDBView>
                                                <img
                                                    className=""
                                                    src="https://cdn.gramedia.com/uploads/marketing/promo_detail_banner_XntzXQK.png"
                                                    alt="First slide"
                                                />
                                            </MDBView>
                                        </MDBCarouselItem>
                                        <MDBCarouselItem itemId="2">
                                            <MDBView>
                                                <img
                                                    className=""
                                                    src="https://cdn.gramedia.com/uploads/marketing/promo_personality_quiz_thr_storefront.jpg"
                                                    alt="Second slide"
                                                />
                                            </MDBView>
                                        </MDBCarouselItem>
                                        <MDBCarouselItem itemId="3">
                                            <MDBView>
                                                <img
                                                    className=""
                                                    src="https://cdn.gramedia.com/uploads/marketing/myvalue_storefront.jpg"
                                                    alt="Third slide"
                                                />
                                            </MDBView>
                                        </MDBCarouselItem>
                                    </MDBCarouselInner> */}
                                </MDBCarousel>
                            </MDBContainer>
                        </div>
                        <div className="banner-small">
                            {/* {console.log(this.state.discounts[0].discount_id)} */}
                            <Link to={`/diskonprod/${3}`}>
                                <div>
                                    <img src="https://cdn.gramedia.com/uploads/marketing/socmed_storefront_SCl42PY.png" alt="" />
                                </div>
                            </Link>
                            <Link to={`/diskonprod/2`}>
                                <div>
                                    <img src="https://cdn.gramedia.com/uploads/marketing/Promo_Detail_Banner-Hanya_3_Hari_BIP_Mei_2020.jpg" alt="" />
                                </div>
                            </Link>
                        </div>
                    </div>
                    <div className="category">
                        <div className="isi-category">
                            <div className="wrap-icon">
                                <div className="icon-menu">
                                    <div className="icon-content">
                                        <Link to='/allproduct'>
                                            <img src="https://cdn.gramedia.com/uploads/highlighted_menu/1._buku_baru__w100_hauto.png" alt="Buku Baru" />
                                            <p className="icon-title">Buku Baru</p>
                                        </Link>
                                    </div>
                                </div>
                            </div>
                            <div className="wrap-icon">
                                <div className="icon-menu">
                                    <div className="icon-content">
                                        <img src="https://cdn.gramedia.com/uploads/highlighted_menu/10._National_Best_Seller_ee50uDG__w100_hauto.png" alt="Buku Pilihan" />
                                        <p className="icon-title">Buku Pilihan</p>
                                    </div>
                                </div>
                            </div>
                            <div className="wrap-icon">
                                <div className="icon-menu">
                                    <div className="icon-content">
                                        <img src="https://cdn.gramedia.com/uploads/highlighted_menu/3._buku_pilihan_ZuXD6jG__w100_hauto.png" alt="Buku Import" />
                                        <p className="icon-title">Buku Import</p>
                                    </div>
                                </div>
                            </div>
                            <div className="wrap-icon">
                                <div className="icon-menu">
                                    <div className="icon-content">
                                        <img src="https://cdn.gramedia.com/uploads/highlighted_menu/icon-store-800px__w100_hauto.png" alt="Toko Offline" />
                                        <p className="icon-title">Toko Offline</p>
                                    </div>
                                </div>
                            </div>
                            <div className="wrap-icon">
                                <div className="icon-menu">
                                    <div className="icon-content">
                                        <img src="https://cdn.gramedia.com/uploads/highlighted_menu/5._print_on_demaand__w100_hauto.png" alt="Print On Demand" />
                                        <p className="icon-title">Print On Demand</p>
                                    </div>
                                </div>
                            </div>
                            <div className="wrap-icon">
                                <div className="icon-menu">
                                    <div className="icon-content">
                                        <img src="https://cdn.gramedia.com/uploads/highlighted_menu/9._Harga_Spesial__w100_hauto.png" alt="Harga Spesial" />
                                        <p className="icon-title">Harga Spesial</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div className="detail-category">
                        <div className="inner-category-container">
                            <div className="top">
                                <h2 className="with-banner">Komik-Komik Pilihan</h2>
                                <a className="with-banner">Lihat Semua</a>
                            </div>
                            <div className="home-category-container">
                                <div className="banner-section">
                                    <a>
                                        <img src="https://cdn.gramedia.com/uploads/category-list/Product_List_Banner-07__w204_hauto.jpg" />
                                    </a>
                                </div>
                                <div className="items-section">
                                    <div className="item">
                                        <div className="carousel-container">
                                            <div className="viewport">
                                                {/* item render */}
                                                {this.renderCategory(komikpilihan)}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div className="detail-category">
                        <div className="inner-category-container">
                            <div className="top">
                                <h2 className="with-banner">Novel Paling Laris</h2>
                                <a className="with-banner">Lihat Semua</a>
                            </div>
                            <div className="home-category-container">
                                <div className="banner-section">
                                    <a>
                                        <img src="https://cdn.gramedia.com/uploads/category-list/Product_List_Banner-novel_paling_laris1__w204_hauto.jpg" />
                                    </a>
                                </div>
                                <div className="items-section">
                                    <div className="item">
                                        <div className="carousel-container">
                                            <div className="viewport">
                                                {/* item render */}
                                                {this.renderCategory(novelpalinglaris)}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div className="detail-category">
                        <div className="inner-category-container">
                            <div className="top">
                                <h2 className="with-banner">Buku-Buku Terpopuler</h2>
                                <a className="with-banner">Lihat Semua</a>
                            </div>
                            <div className="home-category-container">
                                <div className="banner-section">
                                    <a>
                                        <img src="https://cdn.gramedia.com/uploads/category-list/Product_List_Banner-10__w204_hauto.jpg" />
                                    </a>
                                </div>
                                <div className="items-section">
                                    <div className="item">
                                        <div className="carousel-container">
                                            <div className="viewport">
                                                {/* item render */}
                                                {this.renderCategory(bukuterpopuler)}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        );
    }
}

const mapStateToProps = (state) => {
    return {
        Auth: state.Auth
    }
}

export default connect(mapStateToProps, { signOut, searchbuku })(Home);