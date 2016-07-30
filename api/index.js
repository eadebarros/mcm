var user = require('../models/user');

var api = {
  user: require('./users')(user),
  validateToken: function (req, res, next) {
    // verificando em body, query e headers a existência do token de acesso. Ainda não está implementado, mas em breve estará.
    var token = req.body.secretToken || req.query.secretToken || req.headers['x-access-token'];
    
    // Aqui faz a verificação do token por completo.
    if(!token)
      helper.return(401, 'No token provided', res);

    jwt.verify(token, GLOBAL.db.secret, function (err, decoded) {
      if(err)
        return helper.return(401, "Invalid token.", res);
        
      req.decoded = decoded;
      next();
    });
  }
};

module.exports = Object.create(api);