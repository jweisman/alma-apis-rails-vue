const { environment } = require('@rails/webpacker')
const coffee =  require('./loaders/coffee')
const vue =  require('./loaders/vue')

environment.loaders.append('vue', vue)
environment.loaders.append('coffee', coffee)
module.exports = environment
