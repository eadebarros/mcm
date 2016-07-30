'use strict';
module.exports = function(user){
	return {

		saveUser : function(req, res){
			console.log('user saved');
		},

		listUser : function(req, res){
			var opa = {
				object: "value",
				other: 	" value"
			}
			res.send(opa);
		}
	}
}