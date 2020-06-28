import React, { Component } from 'react';
import './header.css'
import { GoSearch } from 'react-icons/go'
import { AiOutlineShopping } from 'react-icons/ai'
import { Link, Redirect, NavLink } from 'react-router-dom';
import { connect } from 'react-redux';
import {signOut, countCart, searchbuku} from '../redux/actions'
// import { signOut } from '../redux/actions'
import { MDBCol, MDBIcon, MDBNavLink } from "mdbreact";
// import { connect } from 'react-redux'
// import { searchbuku } from '../redux/actions'


class Header extends Component {
    state = {
        search:''
    }

    searchOnChange = (e) => {
        e.preventDefault()
        console.log(e.target)
        this.setState({ [e.target.name]: e.target.value })
        if (e.target.value==='') {

            // this.setState ({search:undefined})
        this.props.searchbuku(undefined)
        } else {
            this.props.searchbuku(this.state.search)
            // this.setState({ search: '' })
        }
        console.log(this.state.search)
      }

    componentDidMount() {
        this.props.countCart(this.props.Auth.iduser)
    }

    onlogout = () => {
        localStorage.removeItem('token')
        localStorage.removeItem('trans')
        this.props.signOut()
    }
    render() {
        return (
            <div className='menu-navbar'>
                <div className='inner-container-navbar'>
                    <div>
                        <Link to='/'>
                            <h1>
                                <img src="https://www.gramedia.com/assets/gramedia-icon.svg" />
                            </h1>
                        </Link>
                    </div>
                    <div className='search-area'>
                        <div className='category-selector'></div>
                        <div className='nav-category'>Cari</div>
                        <div className='search-box'>
                            <div className='form-search'>
                                <div className="input-search">
                                    {/* <MDBCol md="6">
                                        <form className="form-inline mt-4 mb-4">
                                            <MDBIcon icon="search" />
                                            <MDBNavLink to='/searchproduct'>
                                            <input className="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search" aria-label="Search" />
                                            </MDBNavLink>
                                        </form>
                                    </MDBCol> */}
                                    <form>
                                        <div className="form-label-group"> 
                                            <input type="input" onChange={this.searchOnChange}
                                            value={this.state.search} name='search'
                                            className="form-control" placeholder="Cari Buku, Novel, Komik" />
                                        <NavLink to='/searchproduct'>
                                            <GoSearch className='search-icon' type='submit'/>
                                        </NavLink>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className='navigation-area' >
                        {
                            this.props.Auth.islogin
                                ?
                                <a href='/'>
                                    <div className="login-button" onClick={this.onlogout}>Keluar</div>
                                </a>
                                :
                                <Link to='/login'>
                                    <div className="login-button">Masuk</div>
                                </Link>
                            }
                        <Link to='/cart'>
                            <AiOutlineShopping className="cart-button"/>
                        </Link>
                        <div style={{position:'relative', top:'10px'}}>
                            {
                                this.props.Auth.role===1 ? 
                                this.props.Totalcart.cart
                                :
                                null
                            }
                        </div>
                    </div>

                </div>

            </div>
        );
    }
}

const mapStateToProps = (state) => {
    return {
        Auth:state.Auth,
        Totalcart:state.Totalcart
    }
}

export default connect(mapStateToProps,{signOut,countCart,searchbuku}) (Header);
