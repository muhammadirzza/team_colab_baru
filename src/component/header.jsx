import React, { Component, Fragment } from 'react';
import './header.css'
import { GoSearch } from 'react-icons/go'
import { AiOutlineShopping } from 'react-icons/ai'
import { Link, NavLink } from 'react-router-dom';
import { connect } from 'react-redux';
import { signOut, countCart, searchbuku } from '../redux/actions'
import {
    Collapse,
    Navbar,
    NavbarToggler,
    Nav,
    UncontrolledDropdown,
    DropdownToggle,
    DropdownMenu,
    DropdownItem
} from 'reactstrap';

class Header extends Component {
    state = {
        search: '',
        isOpen: false

    }
    
    toggle = () => {
        this.setState({ isOpen: !this.state.isOpen })
    }

    componentDidMount() {
        this.props.countCart(this.props.Auth.iduser)
    }

    searchOnChange = (e) => {
        e.preventDefault()
        console.log(e.target)
        this.setState({ [e.target.name]: e.target.value })
        if (e.target.value === '') {

            // this.setState ({search:undefined})
            this.props.searchbuku(undefined)
        } else {
            this.props.searchbuku(this.state.search)
            // this.setState({ search: '' })
        }
        console.log(this.state.search)
    }

    onlogout = () => {
        localStorage.removeItem('token')
        this.props.signOut()
    }
    render() {
        return (
            <div className='menu-navbar'>
                <div className='inner-container-navbar'>
                    <div className="mt-1">
                        <Link to='/'>
                            <h1>
                                <img src="https://www.pinclipart.com/picdir/middle/22-220649_clipart-royalty-free-library-books-svg-icon-icons.png" alt="icon" height="50px" width="50px" />
                            </h1>
                        </Link>
                    </div>
                    <div className='search-area'>
                        <div className='category-selector'></div>
                        <div className='nav-category'>Cari</div>
                        <div className='search-box'>
                            <div className='form-search'>
                                <div className="input-search">
                                    <form>
                                        <NavLink to='/searchproduct'>
                                            <div className="form-label-group">
                                                <input type="input" onChange={this.searchOnChange}
                                                    value={this.state.search} name='search'
                                                    className="form-control" placeholder="Cari Buku, Novel, Komik" />
                                                <GoSearch className='search-icon' />
                                            </div>
                                        </NavLink>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className='navigation-area' >
                        {
                            this.props.Auth.islogin ?
                                <Navbar fixed style={{ backgroundColor: "#281e5a", border: "0px" }} className="" color="#281e5a" expand="md">
                                    <NavbarToggler onClick={this.toggle} />
                                    <Collapse isOpen={this.state.isOpen} navbar>
                                        <Nav className="mr-auto" navbar>
                                            <UncontrolledDropdown nav inNavbar>
                                                <DropdownToggle className='white-text' nav caret>
                                                    {this.props.Auth.username}
                                                </DropdownToggle>
                                                <DropdownMenu right>
                                                    {
                                                        this.props.Auth.role === 2 ?
                                                            <Fragment>
                                                                <DropdownItem>
                                                                    <NavLink to='/manageadmin'>
                                                                        Manage Produk
                                                                    </NavLink>
                                                                </DropdownItem>
                                                                <DropdownItem>
                                                                    <NavLink to='/managediskon'>
                                                                        Manage Diskon
                                                                    </NavLink>
                                                                </DropdownItem>
                                                                <DropdownItem>
                                                                    <NavLink to='/alltransaction'>
                                                                        Manage Order
                                                                    </NavLink>
                                                                </DropdownItem>
                                                                <DropdownItem>
                                                                    <NavLink to='/report'>
                                                                        Manage Report
                                                                    </NavLink>
                                                                </DropdownItem>
                                                            </Fragment>
                                                            :
                                                            <Fragment>
                                                            {
                                                                this.props.Auth.isverified ?
                                                                null
                                                                :
                                                                <DropdownItem >
                                                                <NavLink className="red-text" to='/mailverified'>
                                                                    Unverified
                                                                </NavLink>
                                                            </DropdownItem>
                                                            }    
                                                        
                                                            <DropdownItem>
                                                                <NavLink to='/history'>
                                                                    History Belanja
                                                                </NavLink>
                                                            </DropdownItem>
                                                            <DropdownItem>
                                                                <NavLink to='/profile'>
                                                                    User Profile
                                                                </NavLink>
                                                            </DropdownItem>
                                                            </Fragment>
                                                    }
                                                    <DropdownItem divider />
                                                    <DropdownItem onClick={this.onlogout}>
                                                        Keluar
                                                    </DropdownItem>
                                                </DropdownMenu>
                                            </UncontrolledDropdown>
                                        </Nav>
                                    </Collapse>
                                </Navbar>
                                :
                                <div className="login-button">
                                    <Link className="text-white" to="/login">
                                        Masuk
                                    </Link>
                                </div>
                        }
                        {
                            this.props.Auth.role === 2
                            ?
                            null
                            :
                            <Link to='/cart'>
                                <AiOutlineShopping className="cart-button" />
                            </Link>
                        }
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
        Auth: state.Auth,
        Totalcart:state.Totalcart
    }
}

export default connect(mapStateToProps, { signOut, countCart, searchbuku })(Header);
