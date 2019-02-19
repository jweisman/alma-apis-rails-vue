import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'

Vue.use(VueResource)
Vue.use(TurbolinksAdapter)


document.addEventListener('turbolinks:load', () ->
  Vue.http.headers.common['X-CSRF-Token'] = document
    .querySelector('meta[name="csrf-token"]')
    .getAttribute('content')

  element = document.getElementById 'app'

  if element != null

    app = new Vue(
      el: element

      data: ->
        { item: { item_data: { barcode:""}}, messages: {}}

      methods: 
        updateItem: ->
          self = this
          this.messages = {}
          @$http
            .put '/items/' + this.item.item_data.pid, this.item
            .then (response) ->
                self.messages.success = "Item updated successfully."
                self.item = response.body
                return
            .catch (response) ->
                #self.messages.success = response.data.error
                alert response.data.error
                return
        retrieveItem: ->
          self = this
          @$http
            .get "/items/" + this.item.item_data.barcode
            .then (response) ->
                self.item=response.body
                self.messages = {}
                return
              .catch (response) ->
                console.log response.data.error
                #self.messages.success = response.data.error
                alert response.data.error
                return
      )
    )