import React from 'react';
import '../../src/styles/components/pages/NosotrosPage.css'

const NosotrosPage = (props) => {
    return (

        <main>
        <div>
            <h2>Historia</h2>
            <p>Somos un equipo con conocimientos diversos, conformado principalmente por ex estudiantes de la Universidad Nacional Arturo Jauretche.</p>
            <p>Esta iniciativa surgió en el año 2022, por lo que solo tiene algunos meses desde su comienzo.</p>

        </div>
        <div>
            <h2>Staff</h2>   
            <div className="personas">
                <div className="persona">
                    <img src="img/nosotros/nosotros1.jpg" alt="juangomez"/>
                    <h5>Juan Gomez</h5>
                    <h6>Gerente General</h6>
                    <p>Texto de ejemplo, a completar con información real de los integrantes del equipo.</p>
                </div>
                <div className="persona">
                    <img src="img/nosotros/nosotros2.jpg" alt="dianareyes"/>
                    <h5>Diana Reyes</h5>
                    <h6>Gerente Comercial</h6>
                    <p>Texto de ejemplo, a completar con información real de los integrantes del equipo.</p>
                </div>
                <div className="persona">
                    <img src="img/nosotros/nosotros3.jpg" alt="robertozaptos" />
                    <h5>Roberto Zaptos</h5>
                    <h6>Gerente de Sistemas</h6>
                    <p>Texto de ejemplo, a completar con información real de los integrantes del equipo.</p>
                </div>
                <div className="persona">
                    <img src="img/nosotros/nosotros4.jpg" alt="sandramastropiero"/>
                    <h5>Sandra Mastropiero</h5>
                    <h6>Gerente de Marketing</h6>
                    <p>Texto de ejemplo, a completar con información real de los integrantes del equipo.</p>
                </div>
            </div>
        </div>

    </main>

    );
}

export default NosotrosPage;