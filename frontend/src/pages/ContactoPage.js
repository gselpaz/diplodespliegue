import React from 'react';
import { useState } from 'react';
import axios from 'axios';

import '../../src/styles/components/pages/ContactoPage.css'

const ContactoPage = (props) => {

    const initialForm = {
        nombre: '',
        email: '',
        telefono: '',
        mensaje: '',
    }

    const [sending, setSending] = useState(false);
    const [msg, setMsg] = useState('');
    const [formData, setFormData] = useState(initialForm);

    const handleChange = e => {
        const { name, value } = e.target;
        setFormData(oldData => ({
            ...oldData,
            [name]: value //forma dinamica
        }));
    }

    const handleSubmit = async e => {
        e.preventDefault();
        setMsg('');
        setSending(true)
        const response = await axios.post(`${process.env.REACT_APP_API_URL}/api/contacto`, formData);
        // const response = await axios.post('http://localhost:3000/api/contacto', formData);
        setSending(false);
        setMsg(response.data.message);
        if (response.data.error === false) {
            setFormData(initialForm)
        }
    }

    return (
        <main className="holder">

        <div className="columna left">
            <h2>Dejanos tu mensaje</h2>
            <form action="/contacto" method="post" className="formulario" onSubmit={handleSubmit} >
                <p>
                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" value={formData.nombre} onChange={handleChange}/>
                </p>
                <p>
                    <label for="email">Email</label>
                    <input type="email" name="email" value={formData.email} onChange={handleChange}/>
                </p>
                <p>
                    <label for="telefono">Teléfono</label>
                    <input type="text" name="telefono" value={formData.telefono} onChange={handleChange}/>
                </p>
                <p>
                    <label for="mensaje">Mensaje</label>
                    <textarea name="mensaje" value={formData.mensaje} onChange={handleChange} id="mensaje" cols="30" rows="10"></textarea>
                </p>
                <p className="acciones"><input type="submit" value="Enviar"/></p>
            </form>
            {sending ? <p>Enviando...</p> : null}
            {msg ? <p>{msg}</p> : null}


        </div>

        <div className="columna right">
                <h2>Otras vias de contacto</h2>
                <p>Para compras o propuestas de negocio también nos podes contactar a través de:</p>
                <ul>
                    <li>Teléfono: ________</li>
                    <li>Email: ________</li>
                    <li>Instagram: _______</li>
                </ul>
        </div>

        <div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3275.9742106497047!2d-58.27146328423177!3d-34.806590675768575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95a329662a27d839%3A0x9f376ef65948e570!2sSan%20Juan%20548%2C%20B1888IML%20Florencio%20Varela%2C%20Provincia%20de%20Buenos%20Aires!5e0!3m2!1sen!2sar!4v1635710897350!5m2!1sen!2sar"></iframe>
        </div>





    </main>
    );
}

export default ContactoPage;