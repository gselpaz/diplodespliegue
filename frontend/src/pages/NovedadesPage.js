import {useState, useEffect} from 'react';
import axios from 'axios';
import NovedadItem from '../components/novedades/NovedadItem';


//import '../styles/components/pages/NovedadesPage.css'
import '../../src/styles/components/pages/NovedadesPage.css'


const NovedadesPage = (props) => {
	
	const [loading, setLoading] = useState(false);
	const [novedades, setNovedades] = useState([]);

	useEffect(() => {
		const cargarNovedades = async () => {
			setLoading(true);
            const response = await axios.get(`${process.env.REACT_APP_API_URL}/api/novedades`);
			// const response = await axios.get('http://localhost:3000/api/novedades');
			setNovedades(response.data);
			setLoading(false);
		};

		cargarNovedades();
	}, []);
	return (
	<main className="holder">
			<div className="novedades">
                <h1>Noticias Crypto y Bolsa de Valores</h1>
            </div>
		{loading ? (
			<p>Cargando...</p>
		) : (
			novedades.map(item => <NovedadItem key={item.id}
				title={item.titulo} subtitle={item.subtitulo}
				imagen={item.imagen} body={item.cuerpo} />)
		)}

	</main>
		);
}

export default NovedadesPage;

