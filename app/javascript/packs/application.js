// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"


Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"
import Glide from '@glidejs/glide'
import { initMapbox } from './map';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here
  initMapbox();
  // init glide
  var sliders = document.querySelectorAll('.glide');
  for (var i = 0; i < sliders.length; i++) {
    var glide = new Glide(sliders[i], {
      type: "carousel",
      perView: 1,
      autoplay: 3000
    });
    glide.mount()
  }
});
