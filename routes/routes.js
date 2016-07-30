module.exports = function(router, app){
	var api = require('../api');


	app.use('/api', router);


	/*	
	    Middleware de autenticação. Todas as requisições da API passarão por aqui verificando a existência
	    do token. Caso não possua um token válido, retorna falso indicando a falta ou invalidade do token.
	*/
  	
  	// router.use(api.validateToken);

	/*
	    Rota de autenticação que gera um token com base nas informações de login informadas.
	    Atente-se: A API não salva o token em cookie ou cabeçalho. Ela apenas verifica a existência de um usuário
	    válido na base de dados e retorna o token com duração de 12 horas. Esse token precisa ser salvo em sessão,
	    cookie ou cabeçalho pelo front-end.
	*/
  router.get('/users', api.user.listUser);
  

  // frontend routes =========================================================
  // Angular vai cuidar de todos os requests
  // router.get('*', function(req, res) {
  //   res.sendfile('./public/index.html'); // load our public/index.html file
  // });
}