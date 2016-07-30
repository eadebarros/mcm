var mongoose     = require('mongoose');
var Schema       = mongoose.Schema;

var UserSchema   = new Schema({
    
    name: 			String,
    surename: 		String,
    birth: 			{ type: Number, min: 2, max: 80 },
    belt: 			String,
    member_since: 	Date,
    last_exame: 	Date,
    email: 			String,
    cel: 			Number,
    weight: 		Number,
    tall: 			String,
    address: 		String

});

module.exports = mongoose.model('User', UserSchema);