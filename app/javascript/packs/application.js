// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application";

Rails.start();
// Turbolinks.start();
ActiveStorage.start();




$(function() {
  // 初期化処理呼び出し
  init();

  $("#item_paper_id").change(change_background_image)
  $("#item_font_id").change(change_font)
  $("#item_article_content").change(change_article)

  $('body').keyup(function() {
    $('#livepreview').html($('#liveeditor').val().replace(/\r?\n/g, "<br>"));
  });

  // 初期化処理
  function init(){
    change_background_image()
    change_font()
    change_article()
  }

  // 背景を変更
  function change_background_image() {
    const id = $("#item_paper_id").val()
    const preview = $("#livepreview")
    // ピンク　ブルー　オフホワイト
    if(id == 4){
      preview.css("background-image",'url("/assets/images/paper_pink.jpg")')
    }else if(id == 2){
      preview.css("background-image",'url("/assets/images/paper_blue.jpg")')
    }else if(id == 3){
      preview.css("background-image",'url("/assets/images/paper_offwhite.jpg")')
    }
   }


  function change_article() {
  var selectedOptions = $(this).children(":selected").val();
    $("#liveeditor").text(selectedOptions)
    $('#livepreview').html($('#liveeditor').val().replace(/\r?\n/g, "<br>"));
  }

  function change_font() {
    // jquery 記述
    const id = $("#item_font_id").val()
    // const preview = $("#livepreview")
    // プレーンjs
    const preview = document.getElementById("livepreview")

    if(id == 1) {
      var font = new FontFace("Kawaii", 'url("/assets/fonts/font_cute.otf")', {style: 'normal', weight: 700});
      font.load().then(function(loadedFace) {
        document.fonts.add(loadedFace);
        preview.style.fontFamily = "Kawaii"; //.css("font-family", 'url("/assets/fonts/font_cute.oft")')
      });
    } else if(id == 2){
      var font = new FontFace("Beauty", 'url("/assets/fonts/font_beuty.ttf")', {style: 'normal', weight: 700});
      font.load().then(function(loadedFace) {
        document.fonts.add(loadedFace);
        preview.style.fontFamily = "Beauty"; //.css("font-family", 'url("/assets/fonts/font_cute.oft")')
      });
    } else if(id == 3){
      var font = new FontFace("Kuse", 'url("/assets/fonts/font_kuse.TTF")', {style: 'normal', weight: 700});
      font.load().then(function(loadedFace) {
        document.fonts.add(loadedFace);
        preview.style.fontFamily = "Kuse"; //.css("font-family", 'url("/assets/fonts/font_cute.oft")')
      });
    }
  }
});



/*
$(function() {

    //ボタンでプレビュー機能を表示させる時の記述
    // $("#button_preview").click(function() {
    //     console.log("button_preview on click");
    //     {
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
    //     }
    //     {
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
    //     }
    //     {
    //         const id = $("#article_id").val()
    //         const preview = $("#livepreview")
    //         var selectedOptions = $(this).children(":selected").val();
    //         $("#liveeditor").text(selectedOptions)
    //         $('#livepreview').html($('#liveeditor').val().replace(/\r?\n/g, "<br>"));
    //     }
    // })


})
*/
