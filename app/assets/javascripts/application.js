// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

// js使うので追記
//= require jquery
//= require jquery_ujs

// ページトップへの移動をゆっくりと
$(function() {
  // #back内のaタグがクリックされた時の処理
  $('#back a').on('click',function(event){
    // イベント発生時に行われる処理
    $('body, html').animate({
      scrollTop:0
    }, 800);
    event.preventDefault();
  });
});
