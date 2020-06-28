import React,{useState, useEffect} from "react";
import {  MDBInput, MDBBtn,MDBAlert } from 'mdbreact';
import {connect} from 'react-redux'
// import {changePassUser,resetClear} from '../redux/actions'
import {Redirect} from 'react-router-dom'
import Axios from 'axios'
import {APIURL} from '../support/ApiUrl'
import { Table, Button, Modal, ModalBody, ModalFooter, ModalHeader, CustomInput } from 'reactstrap';
import {capitalize } from '../support/sentencecase'
// import Swal from 'sweetalert2';
// import withReactContent from 'sweetalert2-react-content';

const Reportadmin = (props)=>{
        const [data,setdata]=useState([])
        const [isloading,setisloading]=useState(true)

        useEffect(()=>{
            Axios.get(`${APIURL}/report/famous`)
            .then((res)=>{
                console.log(res.data)
                setdata(res.data)
                console.log(data)
            }).catch((err)=>{
                console.log(err)
            }).finally(()=> {
                setisloading(false)
            })
        },[])
        
        const renderProducts = () => {
            // const { searchProducts } = this.state
            if (data.length) {
                return data.map((val, index) => {
                    return (
                        <tr key={index}>
                            <td scope="row">{index + 1}</td>
                            <td>{(val.name)}</td>
                            <td><img src={APIURL+val.image} height="179px" width="120px" alt=""/></td>
                            <td>{(val.price)}</td>
                            <td>{(val.author)}</td>
                            <td>{(val.catname)}</td>
                        </tr>
                    )
                })
                
            }
        }
        // const dataOnChange=(e)=>{
        //     setdata({...data,[e.target.name]:e.target.value})
        //     console.log(data)
        // }

        // const onFormSubmit=(e)=>{
        //     e.preventDefault()
        //     console.log(data)
        //     props.changePassUser(data)
        //     setdata({...data, oldpass:'', newpass:'', confirmnewpass:''})
        // }
    
        // if(props.Changepass.status){
        //     return <Redirect to='/login'/>      
        // }
        
        if(props.User.role==2){
            if (!isloading) {
                console.log(data)
                return (
                    <div className='manageadmin-container'>
                        <div className="header-table">
                            <div className='d-flex flex-column' style={{height:'90vh'}}>
                                <Table style={{ textAlign: 'center', marginTop: '10px' }} striped responsive hover>
                                    <thead >
                                        <tr>
                                            <th>No.</th>
                                            <th>Judul</th>
                                            <th>Gambar</th>
                                            <th>Harga</th>
                                            <th>Pengarang</th>
                                            <th>Kategori</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {
                                            renderProducts()
                                        }
                                    </tbody>
                                </Table>
                            </div>                
                        </div>
                    </div>
                )
            } else {
                return (
                    <div>
                        loading ...
                    </div>
                )
            }
        }else{
            return <Redirect to="/notfound" />
        }
}

const MapstatetoProps=(state)=>{
    return {
        User:state.Auth
    }
    
}

export default connect(MapstatetoProps) (Reportadmin);