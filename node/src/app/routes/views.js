
const dbConnection = require('../../config/dbConnection');

module.exports = app => {
	const connection = dbConnection();


  	app.get('/', (req, res) => {
  		connection.query('SELECT * FROM ReporteIngresoDeUsuario', (err, result) => {
  		  console.log(result);
   		  res.render('views/views', {
    	  views: result
	   	  });
 		});
  	});
}
