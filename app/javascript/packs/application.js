// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
// $(function() {
//     $("#paper_id").change(function(){
//         const id = $("#paper_id").val()
//         const preview = $("#livepreview")
//         // ピンク　ブラウン　ホワイト
//         if(id == 1){
//             preview.css("background-image",'url("/assets/images/paper_pink.jpg")')
//         }else if(id == 2){
//             preview.css("background-image",'url("/assets/images/paper_blue.jpg")')
//         }else if(id == 3){
//             preview.css("background-image",'url("/assets/images/paper_offwhite.jpg")')
//         }
//     })

//     $("#font_id").change(function(){
//         const id = $("#font_id").val()
//         const preview = document.getElementById("livepreview");//$("#livepreview")
//         // 可愛い/綺麗　綺麗/達筆　可愛い/クセ
//         if(id == 1){
//             var font = new FontFace("Kawaii", 'url("/assets/fonts/font_cute.otf")', {style: 'normal', weight: 700});
//             font.load().then(function(loadedFace) {
//                 document.fonts.add(loadedFace);
//                 preview.style.fontFamily = "Kawaii"; //.css("font-family", 'url("/assets/fonts/font_cute.oft")')
//             });
//         }else if(id == 2){
//             var font = new FontFace("Beauty", 'url("/assets/fonts/font_beuty.ttf")', {style: 'normal', weight: 700});
//             font.load().then(function(loadedFace) {
//                 document.fonts.add(loadedFace);
//                 preview.style.fontFamily = "Beauty"; //.css("font-family", 'url("/assets/fonts/font_cute.oft")')
//             });
//         }else if(id == 3){
//             var font = new FontFace("Kuse", 'url("/assets/fonts/font_kuse.TTF")', {style: 'normal', weight: 700});
//             font.load().then(function(loadedFace) {
//                 document.fonts.add(loadedFace);
//                 preview.style.fontFamily = "Kuse"; //.css("font-family", 'url("/assets/fonts/font_cute.oft")')
//             });
//         }
//     })

//     $("#article_id").change(function(){
//         const id = $("#article_id").val()
//         const preview = $("#livepreview")
//         var selectedOptions = $(this).children(":selected").val();
//         $("#liveeditor").text(selectedOptions)
//         $('#livepreview').html($('#liveeditor').val().replace(/\r?\n/g, "<br>"));
//     })

//     $('body').keyup(function() {
//         $('#livepreview').html($('#liveeditor').val().replace(/\r?\n/g, "<br>"));
//     });

// });