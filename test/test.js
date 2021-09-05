var request = require('supertest');
var app = require('../index.js');
describe('GET /', function() {
 it('respond with hello world', function(done) {
 //naviga a raiz y verifica que el response es "hello world"
 request(app).get('/').expect('hello world', done);
 });
});