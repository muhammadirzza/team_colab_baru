import React, { Component } from 'react';
import {Table, Modal, ModalBody, ModalFooter, ModalHeader, Button} from 'reactstrap';
import Axios from 'axios';
import { connect } from 'react-redux';
import Swal from 'sweetalert2';
import withReactContent from 'sweetalert2-react-content';
import {changetoRupiah} from '../support/changetorupiah';
import {capitalfirst, capitalize} from '../support/sentencecase'
import {dateFormat} from '../support/date'
import { APIURL } from '../support/ApiUrl';
import { Redirect } from 'react-router-dom';
// import {MDBBtn} from 'mdbreact';
// import { API_url } from '../supports/APIurl';
// import {shallowEqual} from 'react-redux'
// import { Redirect } from 'react-router-dom';
// import {today} from '../supports/date'
// import {changetoRupiah} from '../supports/changetorupiah'
const MySwal = withReactContent(Swal)


class Managetrans extends Component{
    state = {
        products:[],
        isModalOpen:false,
        isModaleditOpen:false,
        cartdetail:[],
        totalharga:0,
        totalqty:0,
        isLoading:true,
        // indexdelete:-1,
        indexedit:-1,
        // category:[]
    }

    componentDidMount() {
        this.getData()
    }

    getData = () => {
        Axios.get(`${APIURL}/transactions/alltransaction`)
        .then((res)=>{
            console.log(res)
            this.setState({products:res.data})
        }).catch((err)=>{
            console.log(err)
        }).finally(()=>{
            // this.setState({isLoading:false})
        })
    }

    onEditClick = (index) => {
        this.setState({ indexedit: index, isModaleditOpen: true })
    }

    toggleedit = () => {
        this.setState({ isModaleditOpen: !this.state.isModaleditOpen })
    }

    renderProduct=()=>{
        const {products} = this.state
        return products.map((val, index)=>{
                return (
                    <tr key={index}>
                        <td scope="row">{index+1}</td>
                        <td scope="row">{capitalize(val.username)}</td>
                        <td>{dateFormat(val.orderdate)}</td>
                        {
                            val.shippingdate? 
                            <td>{dateFormat(val.shippingdate)}</td>
                            :
                            <td> - </td>
                        }
                        {
                            val.completedate? 
                            <td>{dateFormat(val.completedate)}</td>
                            :
                            <td> - </td>
                        }
                        <td>{capitalize(val.method)}</td>
                        <img src={APIURL+val.imagetrans} height="179px" width="120px" alt=""/>
                        <td>{capitalfirst(val.status)}</td>
                            {
                                val.status==="verification"?
                                <td style={{alignSelf:'center'}}>
                                    <button className="buttonconfirm" onClick={() => this.onEditClick(index)} style={{width:"128px"}}>Confirm</button>
                                    <button className="buttoncancel" onClick={()=>this.deleteConfirm(index,val.idtransaction)} style={{width:"120px"}}>Cancel</button>
                                </td>
                                :
                                <td></td>
                            }
                    </tr>
                )
        })
    }

    approveConfirm =(id) => {
        console.log(id)
        console.log(this.refs.noresi.value)
        let nomorresi = this.refs.noresi.value
        if (nomorresi) {
            Swal.fire({
                title: `Apakah transaksi ini sudah selesai ?`,
                text: "Pastikan pembayaran sudah valid!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Confirm!'
            }).then((resultswal)=>{
                if(resultswal.value) {
                    Axios.get(`${APIURL}/transactions/paymentapprove/${id}`,{
                        params:{
                            no_resi:nomorresi
                        }
                    })
                    .then((res)=>{
                        Swal.fire(
                            'Approved!',
                            'The Transaction Has Been Approved.',
                            'success'
                        ).then((resultswal_2)=>{
                            if(resultswal_2.value) {
                                this.getData()
                                this.toggleedit()
                            }
                        })
                    }).catch((errdelete)=>{
                        console.log(errdelete)
                    })
                }
            })

        } else {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Silahkan masukkan noor resi',
            })
        }

    }

    toggleadd=()=> {
        this.setState({isModalOpen:!this.state.isModalOpen})
        // console.log(this.state.products)
    }

    // detailCartClick = (index, id) =>{
    //     Axios.get(`${APIURL}/transactions/transdetail/${id}`)
    //     .then((res)=>{
    //         console.log(res.data)
    //         this.setState({cartdetail:res.data})
    //             this.setState({indexedit:index})
    //             this.toggleadd()
    //             console.log(this.state.indexedit)
    //     }).catch((err)=>{
    //         console.log(err)
    //     }).finally(()=>{
    //         this.setState({isLoading:false})
    //       })
    // }

    // renderIsiData=()=>{
    //     return this.state.cartdetail.map((val, index)=>{
    //         return(
    //             <tr key={index} style={{verticalAlign:"middle"}}>
    //                 <td >{index+1}</td>
    //                 <td >{capitalize(val.name)}</td>
    //                 <td >
    //                     <img src={APIURL+val.image} height="179px" width="120px" alt=""/>   
    //                 </td>
    //                 <td >{val.qty}</td>
    //                 <td >
    //                     {
    //                         val.discount_rate ?
    //                         changetoRupiah((val.price - (val.discount_rate * val.price / 100))*val.qty) 
    //                         :
    //                         changetoRupiah(val.price*val.qty)
    //                     }
    //                 </td>
    //             </tr>
    //         )
    //     })
    // }

    // renderTotal=()=>{
    //     if(!this.state.isLoading){
    //         let total=0
    //         this.state.cartdetail.forEach((val)=>{
    //             if (val.discount_rate) {
    //                 total+=(val.price - (val.discount_rate * val.price / 100)) * val.qty               
    //             } else {
    //                 total+=val.qty*val.price
    //             }
    //             // total+=val.qty*val.price
    //         })
    //         return(
    //             <tr style={{verticalAlign:"middle"}}>
    //                 <td colSpan="2" style={{verticalAlign:"middle", fontSize:20, fontWeight:"bolder"}}>Total</td>
    //                 <td ></td>
    //                 <td colSpan="2" style={{fontWeight:"bolder", fontSize:19}}>{changetoRupiah(total)}</td>
    //             </tr>
    //         )
    //     }
    // }

    // onConfirmDelivered=(index)=>{
    //     console.log(index)
    //     MySwal.fire({
    //         title: "Apakah transaksi anda sudah selesai",
    //         text: "Pastikan barang anda sampai dengan selamat!",
    //         icon: 'warning',
    //         showCancelButton: true,
    //         confirmButtonColor: '#3085d6',
    //         cancelButtonColor: '#d33',
    //         confirmButtonText: 'Yes, Confirm it!'
    //         }).then((result) => {
    //             console.log(this.state.products[index])
    //             if (result.value) {
    //             Axios.get(`${APIURL}/transactions/delivered/${this.state.products[index].id}`,{
    //             })
    //             .then((res)=>{
    //                 MySwal.fire(
    //                     'Confirmed!',
    //                     'Transaksi anda sudah selesai.',
    //                     'success'
    //                 ).then((result)=>{
    //                     if(result.value){
    //                         this.componentDidMount()
    //                         this.toggleadd()
    //                         // this.props.countCart(this.props.User.id)
    //                         //   console.log(this.props.User.id)
    //                     }
    //                 })
    //             }).catch((err)=>{
    //                 console.log(err)
    //             }) 
    //             }
    //         })
    // }

    render() {
        const {indexedit} = this.state
        if(this.props.User.role===2){
                return(
                    <div style={{marginTop:"5%"}}>
                        {
                            this.state.products.length ?
                                <Modal isOpen={this.state.isModaleditOpen} toggle={this.toggleedit} className="modal-dialog modal-lg">
                                    <ModalHeader toggle={this.toggleedit}>Transaksi</ModalHeader>
                                        <ModalBody>
                                            <input type="text" ref='noresi' placeholder='Masukkan No Resi' className='form-control mt-2' />
                                            
                                        </ModalBody>
                                        <ModalFooter>
                                            
                                            <button className="buttonconfirm" color="danger" onClick={() => this.approveConfirm(this.state.products[indexedit].idtransaction)}>confirm</button>
                                            
                                        </ModalFooter>
                                </Modal>
                            :
                            null
                        }
        
                        <Table striped className="mt-4">
                            <thead  align="center">
                                <tr>
                                    <th style={{fontSize:20}}>No</th>
                                    <th style={{fontSize:20}}>Name</th>
                                    <th style={{fontSize:20}}>Order Date</th>
                                    <th style={{fontSize:20}}>Delivery Date</th>
                                    <th style={{fontSize:20}}>Complete Date</th>
                                    <th style={{fontSize:20}}>Method</th>
                                    <th style={{fontSize:20}}>Trf Image</th>
                                    <th style={{fontSize:20}}>Status</th>
                                    <th style={{fontSize:20}}>Action</th>
                                </tr>
                            </thead>
                            <tbody align="center">
                                {
                                    this.renderProduct()
                                }
                            </tbody>
                        </Table>
                    </div>
                )
        }else{
           return <Redirect to="/notfound"/>
        }
        
    }
}
const MapstatetoProps=(state)=>{
    return{
        User:state.Auth
    }
}
export default connect(MapstatetoProps) (Managetrans)