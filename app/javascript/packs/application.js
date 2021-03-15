// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
require("@fortawesome/fontawesome-free");
import '@fortawesome/fontawesome-free/css/fontawesome.css';
import "@fortawesome/fontawesome-free/css/all.css";
import "channels"
require('./html.sortable')
require('./portfolios.coffee')
require("jquery")
require("@nathanvda/cocoon")
global.$ = require("jquery")

require("jquery") // Don't really need to require this...
require("jquery-ui")
require("gritter/js/jquery.gritter.js")
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require jquery3
//= require popper
//= require bootstrap
//= require jquery-ui

Rails.start()
Turbolinks.start()
ActiveStorage.start()
