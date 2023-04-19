<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>Slick</title>
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
    <script>
      $( document ).ready( function() {
        $( '.slider1' ).slick( {
          autoplay: true,
          autoplaySpeed: 1000,
        } );
      } );
    </script>
    <style>
    .slider1 img {
        max-width: 100%;
        height: 250px;
         border-radius: 95%;
      }
      .slider1 {
        width: 300px;
        margin: 0px auto;
        
      }
      .slick-prev:before, .slick-next:before {
        color: #444444;
      }
    </style>
  </head>
  <body>
    <div class="slider1">
      <div><img src="../../../Img/004f21b4-cc53-4e43-bfe6-08b3713c6c79.JPG"  alt=""></div>
      <div><img src="../../../Img/004f21b4-cc53-4e43-bfe6-08b3713c6c79.JPG"  alt=""></div>
      <div><img src="../../../Img/004f21b4-cc53-4e43-bfe6-08b3713c6c79.JPG"  alt=""></div>
      <div><img src="../../../Img/004f21b4-cc53-4e43-bfe6-08b3713c6c79.JPG" alt=""></div>
      <div><img src="../../../Img/004f21b4-cc53-4e43-bfe6-08b3713c6c79.JPG" alt=""></div>
      <div><img src="../../../Img/004f21b4-cc53-4e43-bfe6-08b3713c6c79.JPG" alt=""></div>
    </div>
  </body>
</html>