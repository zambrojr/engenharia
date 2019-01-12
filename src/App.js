//import './styles/buefy.min.css'
//import './styles/mdi/css/materialdesignicons.css'

import Vue from 'vue'
import App from './index.vue'
//import Buefy from 'buefy'
//window._ = require('lodash');

//import Vuelidate from 'vuelidate'
//Vue.use(Vuelidate)

//import VueMask from 'v-mask'
//Vue.use(VueMask);


import BootstrapVue from 'bootstrap-vue'
Vue.use(BootstrapVue);

import vuejquery from 'vue-jquery';
Vue.use(vuejquery);

import ModuleLibrary from '@coreui/vue';
Vue.use(ModuleLibrary);


new Vue({
  el: '#app',
  render: h => h(App)
})