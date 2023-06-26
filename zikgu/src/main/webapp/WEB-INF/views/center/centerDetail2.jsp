<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.File"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

<html>
		<head>
		<title>센터 디테일 - health catch</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/css/lightbox.min.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=272bc96032396df76a8c8d79f886c824&libraries=services"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/js/lightbox.min.js"></script>		

<!-- 버튼모달 -->		
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>


<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
	
			
		<!-- 이미지 팝업 슬라이드 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" rel="stylesheet">
 
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>


	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=272bc96032396df76a8c8d79f886c824&libraries=services"></script>






	

<!-- 모달 지우지말것 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.1/js/lightbox.min.js"></script>

<!-- slit 슬라이드 -->
 <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />	
	

	</head>

 <script>
      $( document ).ready( function() {
        $( '.slider2' ).slick( {
          autoplay: true,
          autoplaySpeed: 1000,
        } );
      } );
    </script>
    <style>
    .slider2 img {
        max-width: 100%;
        height: 250px;
         border-radius: 95%;
       
         
         
      }
      .slider2 {
        width: 300px;
        margin: 0px auto; 
      }
      
      
      .slick-prev:before, .slick-next:before {
        color: #000000;
       
      }
      
      .slick-prev.slick-arrow{
        margin-left:10px;
        
      }
      
   
      
     
    
    
    </style>
<style>
@import url(fontawesome-all.min.css);
@import 'https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400';

/*
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

html, body, div, span, applet, object,
iframe, h1, h2, h3, h4, h5, h6, p, blockquote,
pre, a, abbr, acronym, address, big, cite,
code, del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var, b,
u, i, center, dl, dt, dd, ol, ul, li, fieldset,
form, label, legend, table, caption, tbody,
tfoot, thead, tr, th, td, article, aside,
canvas, details, embed, figure, figcaption,
footer, header, hgroup, menu, nav, output, ruby,
section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;}

article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
	display: block;}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

	blockquote:before, blockquote:after, q:before, q:after {
		content: '';
		content: none;
	}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

body {
	-webkit-text-size-adjust: none;
}

mark {
	background-color: transparent;
	color: inherit;
}

input::-moz-focus-inner {
	border: 0;
	padding: 0;
}

input, select, textarea {
	-moz-appearance: none;
	-webkit-appearance: none;
	-ms-appearance: none;
	appearance: none;
}

/* Basic */

	@-ms-viewport {
		width: device-width;
	}

	body {
		-ms-overflow-style: scrollbar;
	}

	@media screen and (max-width: 480px) {

		html, body {
			min-width: 320px;
		}

	}

	html {
		box-sizing: border-box;
	}

	*, *:before, *:after {
		box-sizing: inherit;
	}

	body {
		background-color: #000000;
		background-image: url("images/overlay.png"), -moz-linear-gradient(45deg, #000000 15%, #000000 85%);
		background-image: url("images/overlay.png"), -webkit-linear-gradient(45deg, #000000 15%, #000000 85%);
		background-image: url("images/overlay.png"), -ms-linear-gradient(45deg, #000000 15%, #000000 85%);
		background-image: url("images/overlay.png"), linear-gradient(45deg, #000000 15%, #000000 85%);
	}

		body.is-preload *, body.is-preload *:before, body.is-preload *:after {
			-webkit-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -moz-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -o-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -ms-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  transition: all 0.3s cubic-bezier(1,.01,.32,1);
		}

/* Type */

	body {
		background-color: #935d8c;
		color: rgba(255, 255, 255, 0.65);
	}

	body, input, select, textarea {
		font-family: "Source Sans Pro", Helvetica, sans-serif;
		font-size: 17pt;
		font-weight: 300;
		line-height: 1.65;
	}

		@media screen and (max-width: 1680px) {

			body, input, select, textarea {
				font-size: 14pt;
			}

		}

		@media screen and (max-width: 1280px) {

			body, input, select, textarea {
				font-size: 12pt;
			}

		}

		@media screen and (max-width: 360px) {

			body, input, select, textarea {
				font-size: 11pt;
			}

		}

	a {
		
	}

		a:hover {
			border-bottom-color: transparent;
		}

	strong, b {
		font-weight: 400;
	}

	em, i {
		font-style: italic;
	}

	p {
		margin: 0 0 2em 0;
		color: white;
	}

		p.content {
			-moz-columns: 20em 2;
			-webkit-columns: 20em 2;
			-ms-columns: 20em 2;
			columns: 20em 2;
			-moz-column-gap: 2em;
			-webkit-column-gap: 2em;
			-ms-column-gap: 2em;
			column-gap: 2em;
			text-align: justify;
		}

	h1, h2, h3, h4, h5, h6 {
		font-weight: 300;
		line-height: 1.5;
		margin: 0 0 0.7em 0;
		letter-spacing: -0.025em;
	}

		h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {
			color: inherit;
			text-decoration: none;
		}

	h1 {
		font-size: 2.5em;
		line-height: 1.2;
	}

	h2 {
		font-size: 1.5em;
	}

	h3 {
		font-size: 1.25em;
	}

	h4 {
		font-size: 1.1em;
	}

	h5 {
		font-size: 0.9em;
	}

	h6 {
		font-size: 0.7em;
	}

	@media screen and (max-width: 736px) {

		h1 {
			font-size: 2em;
		}

	}
	Strong {
		color:#00000;
	}

	sub {
		font-size: 0.8em;
		position: relative;
		top: 0.5em;
	}

	sup {
		font-size: 0.8em;
		position: relative;
		top: -0.5em;
	}

	blockquote {
		border-left: solid 4px;
		font-style: italic;
		margin: 0 0 2em 0;
		padding: 0.5em 0 0.5em 2em;
	}

	code {
		border-radius: 8px;
		border: solid 1px;
		font-family: "Courier New", monospace;
		font-size: 0.9em;
		margin: 0 0.25em;
		padding: 0.25em 0.65em;
	}

	pre {
		-webkit-overflow-scrolling: touch;
		font-family: "Courier New", monospace;
		font-size: 0.9em;
		margin: 0 0 2em 0;
	}

		pre code {
			display: block;
			line-height: 1.75;
			padding: 1em 1.5em;
			overflow-x: auto;
		}

	hr {
		border: 0;
		border-bottom: solid 1px;
		margin: 2em 0;
	}

		hr.major {
			margin: 3em 0;
		}

	.align-left {
		text-align: left;
	}

	.align-center {
		text-align: center;
	}

	.align-right {
		text-align: right;
	}

	input, select, textarea {
		color: #ffffff;
	}

	a:hover {
		color: #ffffff;
	}

	strong, b {
		color: #ffffff;
	}

	h1, h2, h3, h4, h5, h6 {
		color: #ffffff;
	}

	blockquote {
		border-left-color: rgba(255, 255, 255, 0.35);
	}

	code {
		background: rgba(255, 255, 255, 0.075);
		border-color: rgba(255, 255, 255, 0.35);
	}

	hr {
		border-bottom-color: rgba(255, 255, 255, 0.35);
	}

/* Row */

	.row {
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		align-items: stretch;
	}

		.row > * {
			box-sizing: border-box;
		}

		.row.gtr-uniform > * > :last-child {
			margin-bottom: 0;
		}

		.row.aln-left {
			justify-content: flex-start;
		}

		.row.aln-center {
			justify-content: center;
		}

		.row.aln-right {
			justify-content: flex-end;
		}

		.row.aln-top {
			align-items: flex-start;
		}

		.row.aln-middle {
			align-items: center;
		}

		.row.aln-bottom {
			align-items: flex-end;
		}

		.row > .imp {
			order: -1;
		}

		.row > .col-1 {
			width: 8.33333%;
		}

		.row > .off-1 {
			margin-left: 8.33333%;
		}

		.row > .col-2 {
			width: 16.66667%;
		}

		.row > .off-2 {
			margin-left: 16.66667%;
		}

		.row > .col-3 {
			width: 25%;
		}

		.row > .off-3 {
			margin-left: 25%;
		}

		.row > .col-4 {
			width: 33.33333%;
		}

		.row > .off-4 {
			margin-left: 33.33333%;
		}

		.row > .col-5 {
			width: 41.66667%;
		}

		.row > .off-5 {
			margin-left: 41.66667%;
		}

		.row > .col-6 {
			width: 50%;
		}

		.row > .off-6 {
			margin-left: 50%;
		}

		.row > .col-7 {
			width: 58.33333%;
		}

		.row > .off-7 {
			margin-left: 58.33333%;
		}

		.row > .col-8 {
			width: 66.66667%;
		}

		.row > .off-8 {
			margin-left: 66.66667%;
		}

		.row > .col-9 {
			width: 75%;
		}

		.row > .off-9 {
			margin-left: 75%;
		}

		.row > .col-10 {
			width: 83.33333%;
		}

		.row > .off-10 {
			margin-left: 83.33333%;
		}

		.row > .col-11 {
			width: 91.66667%;
		}

		.row > .off-11 {
			margin-left: 91.66667%;
		}

		.row > .col-12 {
			width: 100%;
		}

		.row > .off-12 {
			margin-left: 100%;
		}

		.row.gtr-0 {
			margin-top: 0;
			margin-left: 0em;
		}

			.row.gtr-0 > * {
				padding: 0 0 0 0em;
			}

			.row.gtr-0.gtr-uniform {
				margin-top: 0em;
			}

				.row.gtr-0.gtr-uniform > * {
					padding-top: 0em;
				}

		.row.gtr-25 {
			margin-top: 0;
			margin-left: -0.375em;
		}

			.row.gtr-25 > * {
				padding: 0 0 0 0.375em;
			}

			.row.gtr-25.gtr-uniform {
				margin-top: -0.375em;
			}

				.row.gtr-25.gtr-uniform > * {
					padding-top: 0.375em;
				}

		.row.gtr-50 {
			margin-top: 0;
			margin-left: -0.75em;
		}

			.row.gtr-50 > * {
				padding: 0 0 0 0.75em;
			}

			.row.gtr-50.gtr-uniform {
				margin-top: -0.75em;
			}

				.row.gtr-50.gtr-uniform > * {
					padding-top: 0.75em;
				}

		.row {
			margin-top: 0;
			margin-left: -1.5em;
		}

			.row > * {
				padding: 0 0 0 1.5em;
			}

			.row.gtr-uniform {
				margin-top: -1.5em;
			}

				.row.gtr-uniform > * {
					padding-top: 1.5em;
				}

		.row.gtr-150 {
			margin-top: 0;
			margin-left: -2.25em;
		}

			.row.gtr-150 > * {
				padding: 0 0 0 2.25em;
			}

			.row.gtr-150.gtr-uniform {
				margin-top: -2.25em;
			}

				.row.gtr-150.gtr-uniform > * {
					padding-top: 2.25em;
				}

		.row.gtr-200 {
			margin-top: 0;
			margin-left: -3em;
		}

			.row.gtr-200 > * {
				padding: 0 0 0 3em;
			}

			.row.gtr-200.gtr-uniform {
				margin-top: -3em;
			}

				.row.gtr-200.gtr-uniform > * {
					padding-top: 3em;
				}

		@media screen and (max-width: 1680px) {

			.row {
				display: flex;
				flex-wrap: wrap;
				box-sizing: border-box;
				align-items: stretch;
			}

				.row > * {
					box-sizing: border-box;
				}

				.row.gtr-uniform > * > :last-child {
					margin-bottom: 0;
				}

				.row.aln-left {
					justify-content: flex-start;
				}

				.row.aln-center {
					justify-content: center;
				}

				.row.aln-right {
					justify-content: flex-end;
				}

				.row.aln-top {
					align-items: flex-start;
				}

				.row.aln-middle {
					align-items: center;
				}

				.row.aln-bottom {
					align-items: flex-end;
				}

				.row > .imp-xlarge {
					order: -1;
				}

				.row > .col-1-xlarge {
					width: 8.33333%;
				}

				.row > .off-1-xlarge {
					margin-left: 8.33333%;
				}

				.row > .col-2-xlarge {
					width: 16.66667%;
				}

				.row > .off-2-xlarge {
					margin-left: 16.66667%;
				}

				.row > .col-3-xlarge {
					width: 25%;
				}

				.row > .off-3-xlarge {
					margin-left: 25%;
				}

				.row > .col-4-xlarge {
					width: 33.33333%;
				}

				.row > .off-4-xlarge {
					margin-left: 33.33333%;
				}

				.row > .col-5-xlarge {
					width: 41.66667%;
				}

				.row > .off-5-xlarge {
					margin-left: 41.66667%;
				}

				.row > .col-6-xlarge {
					width: 50%;
				}

				.row > .off-6-xlarge {
					margin-left: 50%;
				}

				.row > .col-7-xlarge {
					width: 58.33333%;
				}

				.row > .off-7-xlarge {
					margin-left: 58.33333%;
				}

				.row > .col-8-xlarge {
					width: 66.66667%;
				}

				.row > .off-8-xlarge {
					margin-left: 66.66667%;
				}

				.row > .col-9-xlarge {
					width: 75%;
				}

				.row > .off-9-xlarge {
					margin-left: 75%;
				}

				.row > .col-10-xlarge {
					width: 83.33333%;
				}

				.row > .off-10-xlarge {
					margin-left: 83.33333%;
				}

				.row > .col-11-xlarge {
					width: 91.66667%;
				}

				.row > .off-11-xlarge {
					margin-left: 91.66667%;
				}

				.row > .col-12-xlarge {
					width: 100%;
				}

				.row > .off-12-xlarge {
					margin-left: 100%;
				}

				.row.gtr-0 {
					margin-top: 0;
					margin-left: 0em;
				}

					.row.gtr-0 > * {
						padding: 0 0 0 0em;
					}

					.row.gtr-0.gtr-uniform {
						margin-top: 0em;
					}

						.row.gtr-0.gtr-uniform > * {
							padding-top: 0em;
						}

				.row.gtr-25 {
					margin-top: 0;
					margin-left: -0.375em;
				}

					.row.gtr-25 > * {
						padding: 0 0 0 0.375em;
					}

					.row.gtr-25.gtr-uniform {
						margin-top: -0.375em;
					}

						.row.gtr-25.gtr-uniform > * {
							padding-top: 0.375em;
						}

				.row.gtr-50 {
					margin-top: 0;
					margin-left: -0.75em;
				}

					.row.gtr-50 > * {
						padding: 0 0 0 0.75em;
					}

					.row.gtr-50.gtr-uniform {
						margin-top: -0.75em;
					}

						.row.gtr-50.gtr-uniform > * {
							padding-top: 0.75em;
						}

				.row {
					margin-top: 0;
					margin-left: -1.5em;
				}

					.row > * {
						padding: 0 0 0 1.5em;
					}

					.row.gtr-uniform {
						margin-top: -1.5em;
					}

						.row.gtr-uniform > * {
							padding-top: 1.5em;
						}

				.row.gtr-150 {
					margin-top: 0;
					margin-left: -2.25em;
				}

					.row.gtr-150 > * {
						padding: 0 0 0 2.25em;
					}

					.row.gtr-150.gtr-uniform {
						margin-top: -2.25em;
					}

						.row.gtr-150.gtr-uniform > * {
							padding-top: 2.25em;
						}

				.row.gtr-200 {
					margin-top: 0;
					margin-left: -3em;
				}

					.row.gtr-200 > * {
						padding: 0 0 0 3em;
					}

					.row.gtr-200.gtr-uniform {
						margin-top: -3em;
					}

						.row.gtr-200.gtr-uniform > * {
							padding-top: 3em;
						}

		}

		@media screen and (max-width: 1280px) {

			.row {
				display: flex;
				flex-wrap: wrap;
				box-sizing: border-box;
				align-items: stretch;
			}

				.row > * {
					box-sizing: border-box;
				}

				.row.gtr-uniform > * > :last-child {
					margin-bottom: 0;
				}

				.row.aln-left {
					justify-content: flex-start;
				}

				.row.aln-center {
					justify-content: center;
				}

				.row.aln-right {
					justify-content: flex-end;
				}

				.row.aln-top {
					align-items: flex-start;
				}

				.row.aln-middle {
					align-items: center;
				}

				.row.aln-bottom {
					align-items: flex-end;
				}

				.row > .imp-large {
					order: -1;
				}

				.row > .col-1-large {
					width: 8.33333%;
				}

				.row > .off-1-large {
					margin-left: 8.33333%;
				}

				.row > .col-2-large {
					width: 16.66667%;
				}

				.row > .off-2-large {
					margin-left: 16.66667%;
				}

				.row > .col-3-large {
					width: 25%;
				}

				.row > .off-3-large {
					margin-left: 25%;
				}

				.row > .col-4-large {
					width: 33.33333%;
				}

				.row > .off-4-large {
					margin-left: 33.33333%;
				}

				.row > .col-5-large {
					width: 41.66667%;
				}

				.row > .off-5-large {
					margin-left: 41.66667%;
				}

				.row > .col-6-large {
					width: 50%;
				}

				.row > .off-6-large {
					margin-left: 50%;
				}

				.row > .col-7-large {
					width: 58.33333%;
				}

				.row > .off-7-large {
					margin-left: 58.33333%;
				}

				.row > .col-8-large {
					width: 66.66667%;
				}

				.row > .off-8-large {
					margin-left: 66.66667%;
				}

				.row > .col-9-large {
					width: 75%;
				}

				.row > .off-9-large {
					margin-left: 75%;
				}

				.row > .col-10-large {
					width: 83.33333%;
				}

				.row > .off-10-large {
					margin-left: 83.33333%;
				}

				.row > .col-11-large {
					width: 91.66667%;
				}

				.row > .off-11-large {
					margin-left: 91.66667%;
				}

				.row > .col-12-large {
					width: 100%;
				}

				.row > .off-12-large {
					margin-left: 100%;
				}

				.row.gtr-0 {
					margin-top: 0;
					margin-left: 0em;
				}

					.row.gtr-0 > * {
						padding: 0 0 0 0em;
					}

					.row.gtr-0.gtr-uniform {
						margin-top: 0em;
					}

						.row.gtr-0.gtr-uniform > * {
							padding-top: 0em;
						}

				.row.gtr-25 {
					margin-top: 0;
					margin-left: -0.375em;
				}

					.row.gtr-25 > * {
						padding: 0 0 0 0.375em;
					}

					.row.gtr-25.gtr-uniform {
						margin-top: -0.375em;
					}

						.row.gtr-25.gtr-uniform > * {
							padding-top: 0.375em;
						}

				.row.gtr-50 {
					margin-top: 0;
					margin-left: -0.75em;
				}

					.row.gtr-50 > * {
						padding: 0 0 0 0.75em;
					}

					.row.gtr-50.gtr-uniform {
						margin-top: -0.75em;
					}

						.row.gtr-50.gtr-uniform > * {
							padding-top: 0.75em;
						}

				.row {
					margin-top: 0;
					margin-left: -1.5em;
				}

					.row > * {
						padding: 0 0 0 1.5em;
					}

					.row.gtr-uniform {
						margin-top: -1.5em;
					}

						.row.gtr-uniform > * {
							padding-top: 1.5em;
						}

				.row.gtr-150 {
					margin-top: 0;
					margin-left: -2.25em;
				}

					.row.gtr-150 > * {
						padding: 0 0 0 2.25em;
					}

					.row.gtr-150.gtr-uniform {
						margin-top: -2.25em;
					}

						.row.gtr-150.gtr-uniform > * {
							padding-top: 2.25em;
						}

				.row.gtr-200 {
					margin-top: 0;
					margin-left: -3em;
				}

					.row.gtr-200 > * {
						padding: 0 0 0 3em;
					}

					.row.gtr-200.gtr-uniform {
						margin-top: -3em;
					}

						.row.gtr-200.gtr-uniform > * {
							padding-top: 3em;
						}

		}

		@media screen and (max-width: 980px) {

			.row {
				display: flex;
				flex-wrap: wrap;
				box-sizing: border-box;
				align-items: stretch;
			}

				.row > * {
					box-sizing: border-box;
				}

				.row.gtr-uniform > * > :last-child {
					margin-bottom: 0;
				}

				.row.aln-left {
					justify-content: flex-start;
				}

				.row.aln-center {
					justify-content: center;
				}

				.row.aln-right {
					justify-content: flex-end;
				}

				.row.aln-top {
					align-items: flex-start;
				}

				.row.aln-middle {
					align-items: center;
				}

				.row.aln-bottom {
					align-items: flex-end;
				}

				.row > .imp-medium {
					order: -1;
				}

				.row > .col-1-medium {
					width: 8.33333%;
				}

				.row > .off-1-medium {
					margin-left: 8.33333%;
				}

				.row > .col-2-medium {
					width: 16.66667%;
				}

				.row > .off-2-medium {
					margin-left: 16.66667%;
				}

				.row > .col-3-medium {
					width: 25%;
				}

				.row > .off-3-medium {
					margin-left: 25%;
				}

				.row > .col-4-medium {
					width: 33.33333%;
				}

				.row > .off-4-medium {
					margin-left: 33.33333%;
				}

				.row > .col-5-medium {
					width: 41.66667%;
				}

				.row > .off-5-medium {
					margin-left: 41.66667%;
				}

				.row > .col-6-medium {
					width: 50%;
				}

				.row > .off-6-medium {
					margin-left: 50%;
				}

				.row > .col-7-medium {
					width: 58.33333%;
				}

				.row > .off-7-medium {
					margin-left: 58.33333%;
				}

				.row > .col-8-medium {
					width: 66.66667%;
				}

				.row > .off-8-medium {
					margin-left: 66.66667%;
				}

				.row > .col-9-medium {
					width: 75%;
				}

				.row > .off-9-medium {
					margin-left: 75%;
				}

				.row > .col-10-medium {
					width: 83.33333%;
				}

				.row > .off-10-medium {
					margin-left: 83.33333%;
				}

				.row > .col-11-medium {
					width: 91.66667%;
				}

				.row > .off-11-medium {
					margin-left: 91.66667%;
				}

				.row > .col-12-medium {
					width: 100%;
				}

				.row > .off-12-medium {
					margin-left: 100%;
				}

				.row.gtr-0 {
					margin-top: 0;
					margin-left: 0em;
				}

					.row.gtr-0 > * {
						padding: 0 0 0 0em;
					}

					.row.gtr-0.gtr-uniform {
						margin-top: 0em;
					}

						.row.gtr-0.gtr-uniform > * {
							padding-top: 0em;
						}

				.row.gtr-25 {
					margin-top: 0;
					margin-left: -0.375em;
				}

					.row.gtr-25 > * {
						padding: 0 0 0 0.375em;
					}

					.row.gtr-25.gtr-uniform {
						margin-top: -0.375em;
					}

						.row.gtr-25.gtr-uniform > * {
							padding-top: 0.375em;
						}

				.row.gtr-50 {
					margin-top: 0;
					margin-left: -0.75em;
				}

					.row.gtr-50 > * {
						padding: 0 0 0 0.75em;
					}

					.row.gtr-50.gtr-uniform {
						margin-top: -0.75em;
					}

						.row.gtr-50.gtr-uniform > * {
							padding-top: 0.75em;
						}

				.row {
					margin-top: 0;
					margin-left: -1.5em;
				}

					.row > * {
						padding: 0 0 0 1.5em;
					}

					.row.gtr-uniform {
						margin-top: -1.5em;
					}

						.row.gtr-uniform > * {
							padding-top: 1.5em;
						}

				.row.gtr-150 {
					margin-top: 0;
					margin-left: -2.25em;
				}

					.row.gtr-150 > * {
						padding: 0 0 0 2.25em;
					}

					.row.gtr-150.gtr-uniform {
						margin-top: -2.25em;
					}

						.row.gtr-150.gtr-uniform > * {
							padding-top: 2.25em;
						}

				.row.gtr-200 {
					margin-top: 0;
					margin-left: -3em;
				}

					.row.gtr-200 > * {
						padding: 0 0 0 3em;
					}

					.row.gtr-200.gtr-uniform {
						margin-top: -3em;
					}

						.row.gtr-200.gtr-uniform > * {
							padding-top: 3em;
						}

		}

		@media screen and (max-width: 736px) {

			.row {
				display: flex;
				flex-wrap: wrap;
				box-sizing: border-box;
				align-items: stretch;
			}

				.row > * {
					box-sizing: border-box;
				}

				.row.gtr-uniform > * > :last-child {
					margin-bottom: 0;
				}

				.row.aln-left {
					justify-content: flex-start;
				}

				.row.aln-center {
					justify-content: center;
				}

				.row.aln-right {
					justify-content: flex-end;
				}

				.row.aln-top {
					align-items: flex-start;
				}

				.row.aln-middle {
					align-items: center;
				}

				.row.aln-bottom {
					align-items: flex-end;
				}

				.row > .imp-small {
					order: -1;
				}

				.row > .col-1-small {
					width: 8.33333%;
				}

				.row > .off-1-small {
					margin-left: 8.33333%;
				}

				.row > .col-2-small {
					width: 16.66667%;
				}

				.row > .off-2-small {
					margin-left: 16.66667%;
				}

				.row > .col-3-small {
					width: 25%;
				}

				.row > .off-3-small {
					margin-left: 25%;
				}

				.row > .col-4-small {
					width: 33.33333%;
				}

				.row > .off-4-small {
					margin-left: 33.33333%;
				}

				.row > .col-5-small {
					width: 41.66667%;
				}

				.row > .off-5-small {
					margin-left: 41.66667%;
				}

				.row > .col-6-small {
					width: 50%;
				}

				.row > .off-6-small {
					margin-left: 50%;
				}

				.row > .col-7-small {
					width: 58.33333%;
				}

				.row > .off-7-small {
					margin-left: 58.33333%;
				}

				.row > .col-8-small {
					width: 66.66667%;
				}

				.row > .off-8-small {
					margin-left: 66.66667%;
				}

				.row > .col-9-small {
					width: 75%;
				}

				.row > .off-9-small {
					margin-left: 75%;
				}

				.row > .col-10-small {
					width: 83.33333%;
				}

				.row > .off-10-small {
					margin-left: 83.33333%;
				}

				.row > .col-11-small {
					width: 91.66667%;
				}

				.row > .off-11-small {
					margin-left: 91.66667%;
				}

				.row > .col-12-small {
					width: 100%;
				}

				.row > .off-12-small {
					margin-left: 100%;
				}

				.row.gtr-0 {
					margin-top: 0;
					margin-left: 0em;
				}

					.row.gtr-0 > * {
						padding: 0 0 0 0em;
					}

					.row.gtr-0.gtr-uniform {
						margin-top: 0em;
					}

						.row.gtr-0.gtr-uniform > * {
							padding-top: 0em;
						}

				.row.gtr-25 {
					margin-top: 0;
					margin-left: -0.25em;
				}

					.row.gtr-25 > * {
						padding: 0 0 0 0.25em;
					}

					.row.gtr-25.gtr-uniform {
						margin-top: -0.25em;
					}

						.row.gtr-25.gtr-uniform > * {
							padding-top: 0.25em;
						}

				.row.gtr-50 {
					margin-top: 0;
					margin-left: -0.5em;
				}

					.row.gtr-50 > * {
						padding: 0 0 0 0.5em;
					}

					.row.gtr-50.gtr-uniform {
						margin-top: -0.5em;
					}

						.row.gtr-50.gtr-uniform > * {
							padding-top: 0.5em;
						}

				.row {
					margin-top: 0;
					margin-left: -1em;
				}

					.row > * {
						padding: 0 0 0 1em;
					}

					.row.gtr-uniform {
						margin-top: -1em;
					}

						.row.gtr-uniform > * {
							padding-top: 1em;
						}

				.row.gtr-150 {
					margin-top: 0;
					margin-left: -1.5em;
				}

					.row.gtr-150 > * {
						padding: 0 0 0 1.5em;
					}

					.row.gtr-150.gtr-uniform {
						margin-top: -1.5em;
					}

						.row.gtr-150.gtr-uniform > * {
							padding-top: 1.5em;
						}

				.row.gtr-200 {
					margin-top: 0;
					margin-left: -2em;
				}

					.row.gtr-200 > * {
						padding: 0 0 0 2em;
					}

					.row.gtr-200.gtr-uniform {
						margin-top: -2em;
					}

						.row.gtr-200.gtr-uniform > * {
							padding-top: 2em;
						}

		}

		@media screen and (max-width: 480px) {

			.row {
				display: flex;
				flex-wrap: wrap;
				box-sizing: border-box;
				align-items: stretch;
			}

				.row > * {
					box-sizing: border-box;
				}

				.row.gtr-uniform > * > :last-child {
					margin-bottom: 0;
				}

				.row.aln-left {
					justify-content: flex-start;
				}

				.row.aln-center {
					justify-content: center;
				}

				.row.aln-right {
					justify-content: flex-end;
				}

				.row.aln-top {
					align-items: flex-start;
				}

				.row.aln-middle {
					align-items: center;
				}

				.row.aln-bottom {
					align-items: flex-end;
				}

				.row > .imp-xsmall {
					order: -1;
				}

				.row > .col-1-xsmall {
					width: 8.33333%;
				}

				.row > .off-1-xsmall {
					margin-left: 8.33333%;
				}

				.row > .col-2-xsmall {
					width: 16.66667%;
				}

				.row > .off-2-xsmall {
					margin-left: 16.66667%;
				}

				.row > .col-3-xsmall {
					width: 25%;
				}

				.row > .off-3-xsmall {
					margin-left: 25%;
				}

				.row > .col-4-xsmall {
					width: 33.33333%;
				}

				.row > .off-4-xsmall {
					margin-left: 33.33333%;
				}

				.row > .col-5-xsmall {
					width: 41.66667%;
				}

				.row > .off-5-xsmall {
					margin-left: 41.66667%;
				}

				.row > .col-6-xsmall {
					width: 50%;
				}

				.row > .off-6-xsmall {
					margin-left: 50%;
				}

				.row > .col-7-xsmall {
					width: 58.33333%;
				}

				.row > .off-7-xsmall {
					margin-left: 58.33333%;
				}

				.row > .col-8-xsmall {
					width: 66.66667%;
				}

				.row > .off-8-xsmall {
					margin-left: 66.66667%;
				}

				.row > .col-9-xsmall {
					width: 75%;
				}

				.row > .off-9-xsmall {
					margin-left: 75%;
				}

				.row > .col-10-xsmall {
					width: 83.33333%;
				}

				.row > .off-10-xsmall {
					margin-left: 83.33333%;
				}

				.row > .col-11-xsmall {
					width: 91.66667%;
				}

				.row > .off-11-xsmall {
					margin-left: 91.66667%;
				}

				.row > .col-12-xsmall {
					width: 100%;
				}

				.row > .off-12-xsmall {
					margin-left: 100%;
				}

				.row.gtr-0 {
					margin-top: 0;
					margin-left: 0em;
				}

					.row.gtr-0 > * {
						padding: 0 0 0 0em;
					}

					.row.gtr-0.gtr-uniform {
						margin-top: 0em;
					}

						.row.gtr-0.gtr-uniform > * {
							padding-top: 0em;
						}

				.row.gtr-25 {
					margin-top: 0;
					margin-left: -0.3125em;
				}

					.row.gtr-25 > * {
						padding: 0 0 0 0.3125em;
					}

					.row.gtr-25.gtr-uniform {
						margin-top: -0.3125em;
					}

						.row.gtr-25.gtr-uniform > * {
							padding-top: 0.3125em;
						}

				.row.gtr-50 {
					margin-top: 0;
					margin-left: -0.625em;
				}

					.row.gtr-50 > * {
						padding: 0 0 0 0.625em;
					}

					.row.gtr-50.gtr-uniform {
						margin-top: -0.625em;
					}

						.row.gtr-50.gtr-uniform > * {
							padding-top: 0.625em;
						}

				.row {
					margin-top: 0;
					margin-left: -1.25em;
				}

					.row > * {
						padding: 0 0 0 1.25em;
					}

					.row.gtr-uniform {
						margin-top: -1.25em;
					}

						.row.gtr-uniform > * {
							padding-top: 1.25em;
						}

				.row.gtr-150 {
					margin-top: 0;
					margin-left: -1.875em;
				}

					.row.gtr-150 > * {
						padding: 0 0 0 1.875em;
					}

					.row.gtr-150.gtr-uniform {
						margin-top: -1.875em;
					}

						.row.gtr-150.gtr-uniform > * {
							padding-top: 1.875em;
						}

				.row.gtr-200 {
					margin-top: 0;
					margin-left: -2.5em;
				}

					.row.gtr-200 > * {
						padding: 0 0 0 2.5em;
					}

					.row.gtr-200.gtr-uniform {
						margin-top: -2.5em;
					}

						.row.gtr-200.gtr-uniform > * {
							padding-top: 2.5em;
						}

		}

/* Box */

	.box {
		border-radius: 8px;
		border: solid;
		margin-bottom: 2em;
		padding: 1.5em;
	}

		.box > :last-child,
		.box > :last-child > :last-child,
		.box > :last-child > :last-child > :last-child {
			margin-bottom: 0;
		}

		.box.alt {
			border: 0;
			border-radius: 0;
			padding: 0;
		}

	.box {
		border-color: rgba(255, 255, 255, 0.35);
	}

/* Button */

	input[type="submit"],
	input[type="reset"],
	input[type="button"],
	button,
	.button {
		-moz-appearance: none;
		-webkit-appearance: none;
		-ms-appearance: none;
		appearance: none;
		-moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		border-radius: 8px;
		border: 0;
		cursor: pointer;
		display: inline-block;
		font-weight: 300;
		height: 2.75em;
		line-height: 2.75em;
		min-width: 9.25em;
		padding: 0 1.5em;
		text-align: center;
		text-decoration: none;
		white-space: nowrap;
	}

		input[type="submit"].icon,
		input[type="reset"].icon,
		input[type="button"].icon,
		button.icon,
		.button.icon {
			padding-left: 1.35em;
		}

			input[type="submit"].icon:before,
			input[type="reset"].icon:before,
			input[type="button"].icon:before,
			button.icon:before,
			.button.icon:before {
				margin-right: 0.5em;
			}

		input[type="submit"].fit,
		input[type="reset"].fit,
		input[type="button"].fit,
		button.fit,
		.button.fit {
			width: 100%;
		}

		input[type="submit"].small,
		input[type="reset"].small,
		input[type="button"].small,
		button.small,
		.button.small {
			font-size: 0.8em;
		}

		input[type="submit"].large,
		input[type="reset"].large,
		input[type="button"].large,
		button.large,
		.button.large {
			font-size: 1.35em;
		}

		input[type="submit"].disabled, input[type="submit"]:disabled,
		input[type="reset"].disabled,
		input[type="reset"]:disabled,
		input[type="button"].disabled,
		input[type="button"]:disabled,
		button.disabled,
		button:disabled,
		.button.disabled,
		.button:disabled {
			pointer-events: none;
			opacity: 0.25;
		}

		@media screen and (max-width: 736px) {

			input[type="submit"],
			input[type="reset"],
			input[type="button"],
			button,
			.button {
				min-width: 0;
			}

		}

	input[type="submit"],
	input[type="reset"],
	input[type="button"],
	button,
	.button {
		background-color: transparent;
		box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.35);
		color: black;
	}

		input[type="submit"]:hover,
		input[type="reset"]:hover,
		input[type="button"]:hover,
		button:hover,
		.button:hover {
			background-color: rgba(255, 255, 255, 0.075);
		}

		input[type="submit"]:active,
		input[type="reset"]:active,
		input[type="button"]:active,
		button:active,
		.button:active {
			background-color: rgba(255, 255, 255, 0.2);
		}

		input[type="submit"].icon:before,
		input[type="reset"].icon:before,
		input[type="button"].icon:before,
		button.icon:before,
		.button.icon:before {
			color: rgba(255, 255, 255, 0.5);
		}

		input[type="submit"].primary,
		input[type="reset"].primary,
		input[type="button"].primary,
		button.primary,
		.button.primary {
			background-color: #8cc9f0;
			color: #ffffff !important;
			box-shadow: none;
		}

			input[type="submit"].primary:hover,
			input[type="reset"].primary:hover,
			input[type="button"].primary:hover,
			button.primary:hover,
			.button.primary:hover {
				background-color: #9acff2;
			}

			input[type="submit"].primary:active,
			input[type="reset"].primary:active,
			input[type="button"].primary:active,
			button.primary:active,
			.button.primary:active {
				background-color: #7ec3ee;
			}

			input[type="submit"].primary.icon:before,
			input[type="reset"].primary.icon:before,
			input[type="button"].primary.icon:before,
			button.primary.icon:before,
			.button.primary.icon:before {
				color: #ffffff !important;
			}

/* Form */

	form {
		margin: 0 0 2em 0;
	}

	label {
		display: block;
		font-size: 0.9em;
		font-weight: 400;
		margin: 0 0 1em 0;
	}

	input[type="text"],
	input[type="password"],
	input[type="email"],
	select,
	textarea {
		-moz-appearance: none;
		-webkit-appearance: none;
		-ms-appearance: none;
		appearance: none;
		border-radius: 8px;
		border: solid 1px;
		color: inherit;
		display: block;
		outline: 0;
		padding: 0 1em;
		text-decoration: none;
		width: 100%;
	}

		input[type="text"]:invalid,
		input[type="password"]:invalid,
		input[type="email"]:invalid,
		select:invalid,
		textarea:invalid {
			box-shadow: none;
		}

	select {
		background-size: 1.25rem;
		background-repeat: no-repeat;
		background-position: calc(100% - 1rem) center;
		height: 2.75em;
		padding-right: 2.75em;
		text-overflow: ellipsis;
	}

		select:focus::-ms-value {
			background-color: transparent;
		}

		select::-ms-expand {
			display: none;
		}

	input[type="text"],
	input[type="password"],
	input[type="email"],
	select {
		height: 2.75em;
	}

	textarea {
		padding: 0.75em 1em;
	}

	input[type="checkbox"],
	input[type="radio"] {
		-moz-appearance: none;
		-webkit-appearance: none;
		-ms-appearance: none;
		appearance: none;
		display: block;
		float: left;
		margin-right: -2em;
		opacity: 0;
		width: 1em;
		z-index: -1;
	}

		input[type="checkbox"] + label,
		input[type="radio"] + label {
			text-decoration: none;
			cursor: pointer;
			display: inline-block;
			font-size: 1em;
			font-weight: 300;
			padding-left: 2.4em;
			padding-right: 0.75em;
			position: relative;
		}

			input[type="checkbox"] + label:before,
			input[type="radio"] + label:before {
				-moz-osx-font-smoothing: grayscale;
				-webkit-font-smoothing: antialiased;
				display: inline-block;
				font-style: normal;
				font-variant: normal;
				text-rendering: auto;
				line-height: 1;
				text-transform: none !important;
				font-family: 'Font Awesome 5 Free';
				font-weight: 900;
			}

			input[type="checkbox"] + label:before,
			input[type="radio"] + label:before {
				border-radius: 8px;
				border: solid 1px;
				content: '';
				display: inline-block;
				font-size: 0.8em;
				height: 2.0625em;
				left: 0;
				line-height: 2.0625em;
				position: absolute;
				text-align: center;
				top: 0;
				width: 2.0625em;
			}

		input[type="checkbox"]:checked + label:before,
		input[type="radio"]:checked + label:before {
			content: '\f00c';
		}

	input[type="checkbox"] + label:before {
		border-radius: 8px;
	}

	input[type="radio"] + label:before {
		border-radius: 100%;
	}

	::-webkit-input-placeholder {
		opacity: 1.0;
	}

	:-moz-placeholder {
		opacity: 1.0;
	}

	::-moz-placeholder {
		opacity: 1.0;
	}

	:-ms-input-placeholder {
		opacity: 1.0;
	}

	label {
		color: #ffffff;
	}

	input[type="text"],
	input[type="password"],
	input[type="email"],
	select,
	textarea {
		background-color: rgba(255, 255, 255, 0.075);
		border-color: rgba(255, 255, 255, 0.35);
	}

		input[type="text"]:focus,
		input[type="password"]:focus,
		input[type="email"]:focus,
		select:focus,
		textarea:focus {
			border-color: #8cc9f0;
			box-shadow: 0 0 0 1px #8cc9f0;
		}

	select {
		background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' preserveAspectRatio='none' viewBox='0 0 40 40'%3E%3Cpath d='M9.4,12.3l10.4,10.4l10.4-10.4c0.2-0.2,0.5-0.4,0.9-0.4c0.3,0,0.6,0.1,0.9,0.4l3.3,3.3c0.2,0.2,0.4,0.5,0.4,0.9 c0,0.4-0.1,0.6-0.4,0.9L20.7,31.9c-0.2,0.2-0.5,0.4-0.9,0.4c-0.3,0-0.6-0.1-0.9-0.4L4.3,17.3c-0.2-0.2-0.4-0.5-0.4-0.9 c0-0.4,0.1-0.6,0.4-0.9l3.3-3.3c0.2-0.2,0.5-0.4,0.9-0.4S9.1,12.1,9.4,12.3z' fill='rgba(255, 255, 255, 0.35)' /%3E%3C/svg%3E");
	}

		select option {
			color: #ffffff;
			background: #935d8c;
		}

	input[type="checkbox"] + label,
	input[type="radio"] + label {
		color: rgba(255, 255, 255, 0.65);
	}

		input[type="checkbox"] + label:before,
		input[type="radio"] + label:before {
			background: rgba(255, 255, 255, 0.075);
			border-color: rgba(255, 255, 255, 0.35);
		}

	input[type="checkbox"]:checked + label:before,
	input[type="radio"]:checked + label:before {
		background-color: #ffffff;
		border-color: #ffffff;
		color: #935d8c;
	}

	input[type="checkbox"]:focus + label:before,
	input[type="radio"]:focus + label:before {
		border-color: #8cc9f0;
		box-shadow: 0 0 0 1px #8cc9f0;
	}

	::-webkit-input-placeholder {
		color: rgba(255, 255, 255, 0.5) !important;
	}

	:-moz-placeholder {
		color: rgba(255, 255, 255, 0.5) !important;
	}

	::-moz-placeholder {
		color: rgba(255, 255, 255, 0.5) !important;
	}

	:-ms-input-placeholder {
		color: rgba(255, 255, 255, 0.5) !important;
	}

	.formerize-placeholder {
		color: rgba(255, 255, 255, 0.5) !important;
	}

/* Icon */

	.icon {
		text-decoration: none;
		-moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		border-bottom: none;
		position: relative;
	}

		.icon:before {
			-moz-osx-font-smoothing: grayscale;
			-webkit-font-smoothing: antialiased;
			display: inline-block;
			font-style: normal;
			font-variant: normal;
			text-rendering: auto;
			line-height: 1;
			text-transform: none !important;
			font-family: 'Font Awesome 5 Free';
			font-weight: 400;
		}

		.icon > .label {
			display: none;
		}

		.icon:before {
			line-height: solid;
		}

		.icon.solid:before {
			font-weight: 900;
		}

		.icon.brands:before {
			font-family: 'Font Awesome 5 Brands';
		}

		.icon.major {
			border: solid 1px;
			display: inline-block;
			border-radius: 100%;
			padding: 0.65em;
			margin: 0 0 2em 0;
			cursor: default;
		}

			.icon.major:before {
				display: inline-block;
				font-size: 6.25rem;
				width: 2.25em;
				height: 2.25em;
				line-height: 2.2em;
				border-radius: 100%;
				border: solid 1px;
				text-align: center;
			}

		.icon.alt {
			display: inline-block;
			border: solid 1px;
			border-radius: 100%;
		}

			.icon.alt:before {
				display: block;
				font-size: 1.25em;
				width: 2em;
				height: 2em;
				text-align: center;
				line-height: 2em;
			}

		.icon.style1 {
			color: #efa8b0;
		}

		.icon.style2 {
			color: #c79cc8;
		}

		.icon.style3 {
			color: #a89cc8;
		}

		.icon.style4 {
			color: #9bb2e1;
		}

		.icon.style5 {
			color: #8cc9f0;
		}

		@media screen and (max-width: 1680px) {

			.icon.major:before {
				font-size: 5.5rem;
			}

		}

		@media screen and (max-width: 1280px) {

			.icon.major:before {
				font-size: 4.75rem;
			}

		}

		@media screen and (max-width: 736px) {

			.icon.major {
				margin: 0 0 1.5em 0;
				padding: 0.35em;
			}

				.icon.major:before {
					font-size: 3.5rem;
				}

		}

	.icon.major {
		border-color: rgba(255, 255, 255, 0.35);
	}

		.icon.major:before {
			border-color: rgba(255, 255, 255, 0.35);
		}

	.icon.alt {
		border-color: rgba(255, 255, 255, 0.35);
		color: #ffffff;
	}

		.icon.alt:hover {
			background-color: rgba(255, 255, 255, 0.075);
		}

		.icon.alt:active {
			background-color: rgba(255, 255, 255, 0.2);
		}
		

/* Image */

	.image {
		border-radius: 8px;
		border: 0;
		display: inline-block;
		position: relative;
		
	}

		.image img {
			border-radius: 8px;
			display: block;
			width:200px;
		height:200px;
		}

		.image.left, .image.right {
			max-width: 40%;
		}

			.image.left img, .image.right img {
				width: 100%;
			}

		.image.left {
			float: left;
			margin: 0 1.5em 1em 0;
			top: 0.25em;
		}

		.image.right {
			float: right;
			margin: 0 0 1em 1.5em;
			top: 0.25em;
		}

		.image.fit {
			display: block;
			margin: 0 0 2em 0;
			width: 100%;
		}

			.image.fit img {
				width: 100%;
			}

		.image.main {
			display: block;
			margin: 0 0 3em 0;
			width: 100%;
		}

			.image.main img {
				width: 100%;
			}

/* List */

	ol {
		list-style: decimal;
		margin: 0 0 2em 0;
		padding-left: 1.25em;
	}

		ol li {
			padding-left: 0.25em;
		}

	ul {
		list-style: disc;
		margin: 0 0 2em 0;
		padding-left: 1em;
	}

		ul li {
			padding-left: 0.5em;
		}

		ul.alt {
			list-style: none;
			padding-left: 0;
		}

			ul.alt li {
				border-top: solid 1px;
				padding: 0.5em 0;
			}

				ul.alt li:first-child {
					border-top: 0;
					padding-top: 0;
				}

	dl {
		margin: 0 0 2em 0;
	}

		dl dt {
			display: block;
			font-weight: 400;
			margin: 0 0 1em 0;
		}

		dl dd {
			margin-left: 2em;
		}

		dl.alt dt {
			display: block;
			width: 3em;
			margin: 0;
			clear: left;
			float: left;
		}

		dl.alt dd {
			margin: 0 0 0.85em 5.5em;
		}

		dl.alt:after {
			content: '';
			display: block;
			clear: both;
		}

	ul.alt li {
		border-top-color: rgba(255, 255, 255, 0.35);
	}

	dl dt {
		color: #ffffff;
	}

/* Actions */

	ul.actions {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		cursor: default;
		list-style: none;
		margin-left: -1em;
		padding-left: 0;
	}

		ul.actions li {
			padding: 0 0 0 1em;
			vertical-align: middle;
		}

		ul.actions.special {
			-moz-justify-content: center;
			-webkit-justify-content: center;
			-ms-justify-content: center;
			justify-content: center;
			width: 100%;
			margin-left: 0;
		}

			ul.actions.special li:first-child {
				padding-left: 0;
			}

		ul.actions.stacked {
			-moz-flex-direction: column;
			-webkit-flex-direction: column;
			-ms-flex-direction: column;
			flex-direction: column;
			margin-left: 0;
		}

			ul.actions.stacked li {
				padding: 1.3em 0 0 0;
			}

				ul.actions.stacked li:first-child {
					padding-top: 0;
				}

		ul.actions.fit {
			width: calc(100% + 1em);
		}

			ul.actions.fit li {
				-moz-flex-grow: 1;
				-webkit-flex-grow: 1;
				-ms-flex-grow: 1;
				flex-grow: 1;
				-moz-flex-shrink: 1;
				-webkit-flex-shrink: 1;
				-ms-flex-shrink: 1;
				flex-shrink: 1;
				width: 100%;
			}

				ul.actions.fit li > * {
					width: 100%;
				}

			ul.actions.fit.stacked {
				width: 100%;
			}

		@media screen and (max-width: 480px) {

			ul.actions:not(.fixed) {
				-moz-flex-direction: column;
				-webkit-flex-direction: column;
				-ms-flex-direction: column;
				flex-direction: column;
				margin-left: 0;
				width: 100% !important;
			}

				ul.actions:not(.fixed) li {
					-moz-flex-grow: 1;
					-webkit-flex-grow: 1;
					-ms-flex-grow: 1;
					flex-grow: 1;
					-moz-flex-shrink: 1;
					-webkit-flex-shrink: 1;
					-ms-flex-shrink: 1;
					flex-shrink: 1;
					padding: 1em 0 0 0;
					text-align: center;
					width: 100%;
				}

					ul.actions:not(.fixed) li > * {
						width: 100%;
					}

					ul.actions:not(.fixed) li:first-child {
						padding-top: 0;
					}

					ul.actions:not(.fixed) li input[type="submit"],
					ul.actions:not(.fixed) li input[type="reset"],
					ul.actions:not(.fixed) li input[type="button"],
					ul.actions:not(.fixed) li button,
					ul.actions:not(.fixed) li .button {
						width: 100%;
					}

						ul.actions:not(.fixed) li input[type="submit"].icon:before,
						ul.actions:not(.fixed) li input[type="reset"].icon:before,
						ul.actions:not(.fixed) li input[type="button"].icon:before,
						ul.actions:not(.fixed) li button.icon:before,
						ul.actions:not(.fixed) li .button.icon:before {
							margin-left: -0.5rem;
						}

		}

/* Icons */

	ul.icons {
		cursor: default;
		list-style: none;
		padding-left: 0;
	}

		ul.icons li {
			display: inline-block;
			padding: 0 0.65em 0 0;
		}

			ul.icons li:last-child {
				padding-right: 0 !important;
			}

/* Section/Article */

	section.special, article.special {
		text-align: center;
	}

	header.major {
		margin-bottom: 3em;
	}

		header.major h2 {
			font-size: 2em;
		}

			header.major h2:after {
				display: block;
				content: '';
				width: 3.25em;
				height: 2px;
				margin: 0.7em 0 1em 0;
				border-radius: 2px;
			}

				section.special header.major h2:after, article.special header.major h2:after {
					margin-left: auto;
					margin-right: auto;
				}

		header.major p {
			font-size: 1.25em;
			letter-spacing: -0.025em;
		}

		header.major.special {
			text-align: center;
		}

			header.major.special h2:after {
				margin-left: auto;
				margin-right: auto;
			}

	footer.major {
		margin-top: 3em;
	}

	@media screen and (max-width: 736px) {

		header.major {
			margin-bottom: 0;
		}

			header.major h2 {
				font-size: 1.5em;
			}

			header.major p {
				font-size: 1em;
				letter-spacing: 0;
			}

				header.major p br {
					display: none;
				}

		footer.major {
			margin-top: 0;
		}

	}

	header.major h2:after {
		background-color: rgba(255, 255, 255, 0.35);
	}

/* Table */

	.table-wrapper {
		-webkit-overflow-scrolling: touch;
		overflow-x: auto;
	}

	table {
		margin: 0 0 2em 0;
		width: 100%;
	}

		table tbody tr {
			border: solid 1px;
			border-left: 0;
			border-right: 0;
		}

		table td {
			padding: 0.75em 0.75em;
		}

		table th {
			font-size: 0.9em;
			font-weight: 400;
			padding: 0 0.75em 0.75em 0.75em;
			text-align: left;
		}

		table thead {
			border-bottom: solid 2px;
		}

		table tfoot {
			border-top: solid 2px;
		}

		table.alt {
			border-collapse: separate;
		}

			table.alt tbody tr td {
				border: solid 1px;
				border-left-width: 0;
				border-top-width: 0;
			}

				table.alt tbody tr td:first-child {
					border-left-width: 1px;
				}

			table.alt tbody tr:first-child td {
				border-top-width: 1px;
			}

			table.alt thead {
				border-bottom: 0;
			}

			table.alt tfoot {
				border-top: 0;
			}

	table tbody tr {
		border-color: rgba(255, 255, 255, 0.35);
	}
	
	.aa { text-decoration:none }

.aa:hover{ text-decoration: underline }

		table tbody tr:nth-child(2n + 1) {
			background-color: rgba(255, 255, 255, 0.075);
		}

	table th {
		color: #ffffff;
	}

	table thead {
		border-bottom-color: rgba(255, 255, 255, 0.35);
	}

	table tfoot {
		border-top-color: rgba(255, 255, 255, 0.35);
	}

	table.alt tbody tr td {
		border-color: rgba(255, 255, 255, 0.35);
	}

/* Features */

	.features {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		-moz-flex-wrap: wrap;
		-webkit-flex-wrap: wrap;
		-ms-flex-wrap: wrap;
		flex-wrap: wrap;
		-moz-justify-content: center;
		-webkit-justify-content: center;
		-ms-justify-content: center;
		justify-content: center;
		width: calc(100% + 2em);
		margin: 0 0 3em -2em;
		padding: 0;
		list-style: none;
	}

		.features li {
			width: calc(33.33333% - 2em);
			margin-left: 2em;
			margin-top: 3em;
			padding: 0;
		}

			.features li:nth-child(1), .features li:nth-child(2), .features li:nth-child(3) {
				margin-top: 0;
			}

			.features li > :last-child {
				margin-bottom: 0;
			}

		@media screen and (max-width: 980px) {

			.features li {
				width: calc(50% - 2em);
			}

				.features li:nth-child(3) {
					margin-top: 3em;
				}

		}

		@media screen and (max-width: 736px) {

			.features {
				width: 100%;
				margin: 0 0 2em 0;
			}

				.features li {
					width: 100%;
					margin-left: 0;
					margin-top: 2em;
				}

					.features li:nth-child(2), .features li:nth-child(3) {
						margin-top: 2em;
					}

		}

/* Statistics */

	.statistics {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		width: 100%;
		margin: 0 0 3em 0;
		padding: 0;
		list-style: none;
		cursor: default;
	}

		.statistics li {
			-moz-flex: 1;
			-webkit-flex: 1;
			-ms-flex: 1;
			flex: 1;
			padding: 1.5em;
			color: #ffffff;
			text-align: center;
		}

			.statistics li.style1 {
				background-color: #efa8b0;
			}

			.statistics li.style2 {
				background-color: #c79cc8;
			}

			.statistics li.style3 {
				background-color: #a89cc8;
			}

			.statistics li.style4 {
				background-color: #9bb2e1;
			}

			.statistics li.style5 {
				background-color: #8cc9f0;
			}

			.statistics li strong, .statistics li b {
				display: block;
				font-size: 2em;
				line-height: 1.1;
				color: inherit !important;
				font-weight: 300;
				letter-spacing: -0.025em;
			}

			.statistics li:first-child {
				border-top-left-radius: 8px;
				border-bottom-left-radius: 8px;
			}

			.statistics li:last-child {
				border-top-right-radius: 8px;
				border-bottom-right-radius: 8px;
			}

			.statistics li .icon {
				display: inline-block;
			}

				.statistics li .icon:before {
					font-size: 2.75rem;
					line-height: 1.3;
				}

		@media screen and (max-width: 980px) {

			.statistics li strong, .statistics li b {
				font-size: 1.5em;
			}

		}

		@media screen and (max-width: 736px) {

			.statistics {
				display: block;
				width: 20em;
				max-width: 100%;
				margin: 0 auto 2em auto;
			}

				.statistics li:first-child {
					border-bottom-left-radius: 0;
					border-top-right-radius: 8px;
				}

				.statistics li:last-child {
					border-top-right-radius: 0;
					border-bottom-left-radius: 8px;
				}

				.statistics li .icon:before {
					font-size: 3.75rem;
				}

				.statistics li strong, .statistics li b {
					font-size: 2.5em;
				}

		}

/* Spotlight */

	.spotlight {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		-moz-align-items: center;
		-webkit-align-items: center;
		-ms-align-items: center;
		align-items: center;
		margin: 0 0 2em 0;
	}

		.spotlight .content {
			-moz-flex: 1;
			-webkit-flex: 1;
			-ms-flex: 1;
			flex: 1;
		}

			.spotlight .content > :last-child {
				margin-bottom: 0;
			}

			.spotlight .content header.major {
				margin: 0 0 2em 0;
			}

		.spotlight .image {
			display: inline-block;
			margin-left: 4em;
			padding: 0.65em;
			border-radius: 100%;
			border: solid 1px;
		}

			.spotlight .image img {
				display: block;
				border-radius: 100%;
				width: 16em;
			}

		@media screen and (max-width: 980px) {

			.spotlight {
				-moz-flex-direction: column-reverse;
				-webkit-flex-direction: column-reverse;
				-ms-flex-direction: column-reverse;
				flex-direction: column-reverse;
				text-align: center;
			}

				.spotlight .content {
					-moz-flex: 0 1 auto;
					-webkit-flex: 0 1 auto;
					-ms-flex: 0 1 auto;
					flex: 0 1 auto;
					width: 100%;
				}

					.spotlight .content header.major h2:after {
						margin-left: auto;
						margin-right: auto;
					}

					.spotlight .content .actions {
						-moz-justify-content: center;
						-webkit-justify-content: center;
						-ms-justify-content: center;
						justify-content: center;
						width: calc(100% + 1em);
					}

				.spotlight .image {
					-moz-flex: 0 1 auto;
					-webkit-flex: 0 1 auto;
					-ms-flex: 0 1 auto;
					flex: 0 1 auto;
					margin-left: 0;
					margin-bottom: 2em;
				}

		}

		@media screen and (max-width: 736px) {

			.spotlight .image {
				padding: 0.35em;
			}

				.spotlight .image img {
					width: 12em;
				}

		}

	.spotlight .image {
		border-color: rgba(255, 255, 255, 0.35);
	}

/* Header */

	#header {
		padding: 5em 5em 1em 5em ;
		text-align: center;
	}

		#header h1 {
			margin: 0 0 0.25em 0;
		}

		#header p {
			font-size: 1.25em;
			letter-spacing: -0.025em;
		}

		#header.alt {
			padding: 7em 5em 4em 5em ;
		}

			#header.alt h1 {
				font-size: 3.25em;
			}

			#header.alt > * {
				-moz-transition: opacity 3s ease;
				-webkit-transition: opacity 3s ease;
				-ms-transition: opacity 3s ease;
				transition: opacity 3s ease;
				-moz-transition-delay: 0.5s;
				-webkit-transition-delay: 0.5s;
				-ms-transition-delay: 0.5s;
				transition-delay: 0.5s;
				opacity: 1;
			}

			#header.alt .logo {
				-moz-transition: opacity 1.25s ease, -moz-transform 0.5s ease;
				-webkit-transition: opacity 1.25s ease, -webkit-transform 0.5s ease;
				-ms-transition: opacity 1.25s ease, -ms-transform 0.5s ease;
				transition: opacity 1.25s ease, transform 0.5s ease;
				-moz-transition-delay: 0s;
				-webkit-transition-delay: 0s;
				-ms-transition-delay: 0s;
				transition-delay: 0s;
				display: block;
				margin: 0 0 1.5em 0;
			}

				#header.alt .logo img {
					display: block;
					margin: 0 auto;
					max-width: 75%;
				}

		@media screen and (max-width: 1280px) {

			#header {
				padding: 4em 4em 0.1em 4em ;
			}

				#header.alt {
					padding: 6em 4em 3em 4em ;
				}

		}

		@media screen and (max-width: 980px) {

			#header {
				padding: 4em 3em 0.1em 3em ;
			}

				#header.alt {
					padding: 5em 3em 2em 3em ;
				}

		}

		@media screen and (max-width: 736px) {

			#header {
				padding: 3em 2em 0.1em 2em ;
			}

				#header p {
					font-size: 1em;
					letter-spacing: 0;
				}

					#header p br {
						display: none;
					}

				#header.alt {
					padding: 4em 2em 1em 2em ;
				}

					#header.alt h1 {
						font-size: 2.5em;
					}

		}

		@media screen and (max-width: 480px) {

			#header {
				padding: 3em 1.5em 0.1em 1.5em ;
			}

				#header.alt {
					padding: 4em 1.5em 1em 1.5em ;
				}

		}

		@media screen and (max-width: 360px) {

			#header {
				padding: 2.5em 1em 0.1em 1em ;
			}

				#header.alt {
					padding: 3.5em 1em 0.5em 1em ;
				}

		}

		body.is-preload #header.alt > * {
			opacity: 0;
		}

		body.is-preload #header.alt .logo {
			-moz-transform: scale(0.8) rotate(-30deg);
			-webkit-transform: scale(0.8) rotate(-30deg);
			-ms-transform: scale(0.8) rotate(-30deg);
			transform: scale(0.8) rotate(-30deg);
		}

/* Nav */

	#nav {
		-moz-transition: background-color 0.2s ease, border-top-left-radius 0.2s ease, border-top-right-radius 0.2s ease, padding 0.2s ease;
		-webkit-transition: background-color 0.2s ease, border-top-left-radius 0.2s ease, border-top-right-radius 0.2s ease, padding 0.2s ease;
		-ms-transition: background-color 0.2s ease, border-top-left-radius 0.2s ease, border-top-right-radius 0.2s ease, padding 0.2s ease;
		transition: background-color 0.2s ease, border-top-left-radius 0.2s ease, border-top-right-radius 0.2s ease, padding 0.2s ease;
		background-color: #ffffff;
		color: #636363;
		position: absolute;
		width: 64em;
		max-width: calc(100% - 4em);
		padding: 1em;
		background-color: #f7f7f7;
		border-top-left-radius: 0.25em;
		border-top-right-radius: 0.25em;
		cursor: default;
		text-align: center;
	}

		#nav input, #nav select, #nav textarea {
			color: #636363;
		}

		#nav a:hover {
			color: #636363;
		}

		#nav strong, #nav b {
			color: #636363;
		}

		#nav h1, #nav h2, #nav h3, #nav h4, #nav h5, #nav h6 {
			color: #636363;
		}

		#nav blockquote {
			border-left-color: #dddddd;
		}

		#nav code {
			background: rgba(222, 222, 222, 0.25);
			border-color: #dddddd;
		}

		#nav hr {
			border-bottom-color: #dddddd;
		}

		#nav + #main {
			padding-top: 4.25em;
		}

		#nav ul {
			margin: 0;
			padding: 0;
			list-style: none;
		}

			#nav ul li {
				-moz-transition: margin 0.2s ease;
				-webkit-transition: margin 0.2s ease;
				-ms-transition: margin 0.2s ease;
				transition: margin 0.2s ease;
				display: inline-block;
				margin: 0 0.35em;
				padding: 0;
				vertical-align: middle;
			}

				#nav ul li a {
					-moz-transition: font-size 0.2s ease;
					-webkit-transition: font-size 0.2s ease;
					-ms-transition: font-size 0.2s ease;
					transition: font-size 0.2s ease;
					display: inline-block;
					height: 2.25em;
					line-height: 2.25em;
					padding: 0 1.25em;
					border: 0;
					border-radius: 8px;
					box-shadow: inset 0 0 0 1px transparent;
				}

					#nav ul li a:hover {
						background-color: rgba(222, 222, 222, 0.25);
					}

					#nav ul li a.active {
						background-color: #ffffff;
						box-shadow: none;
					}

		#nav.alt {
			position: fixed;
			top: 0;
			padding: 0.5em 1em;
			background-color: rgba(247, 247, 247, 0.95);
			border-top-left-radius: 0;
			border-top-right-radius: 0;
			z-index: 10000;
		}

			#nav.alt ul li {
				margin: 0 0.175em;
			}

				#nav.alt ul li a {
					font-size: 0.9em;
				}

		@media screen and (max-width: 736px) {

			#nav {
				display: none;
			}

				#nav + #main {
					padding-top: 0;
				}

		}

/* Main */

	#main {
		background-color: #ffffff;
		color: #636363;
		border-radius: 0.25em;
	}

		#main input, #main select, #main textarea {
			color: #636363;
		}

		#main a:hover {
			color: #636363;
		}

		#main strong, #main b {
			color: #636363;
		}

		#main h1, #main h2, #main h3, #main h4, #main h5, #main h6 {
			color: #636363;
		}

		#main blockquote {
			border-left-color: #dddddd;
		}

		#main code {
			background: rgba(222, 222, 222, 0.25);
			border-color: #dddddd;
		}

		#main hr {
			border-bottom-color: #dddddd;
		}

		#main .box {
			border-color: #dddddd;
		}

		#main input[type="submit"],
		#main input[type="reset"],
		#main input[type="button"],
		#main button,
		#main .button {
			
			box-shadow: inset 0 0 0 1px #dddddd;
			color: #000000 !important;
			
		}

			#main input[type="submit"]:hover,
			#main input[type="reset"]:hover,
			#main input[type="button"]:hover,
			#main button:hover,
			#main .button:hover {
				background-color: rgba(222, 222, 222, 0.25);
			}

			#main input[type="submit"]:active,
			#main input[type="reset"]:active,
			#main input[type="button"]:active,
			#main button:active,
			#main .button:active {
				background-color: rgba(222, 222, 222, 0.5);
			}

			#main input[type="submit"].icon:before,
			#main input[type="reset"].icon:before,
			#main input[type="button"].icon:before,
			#main button.icon:before,
			#main .button.icon:before {
				color: rgba(99, 99, 99, 0.25);
			}

			#main input[type="submit"].primary,
			#main input[type="reset"].primary,
			#main input[type="button"].primary,
			#main button.primary,
			#main .button.primary {
				background-color: #8cc9f0;
				color: #ffffff !important;
				box-shadow: none;
			}

				#main input[type="submit"].primary:hover,
				#main input[type="reset"].primary:hover,
				#main input[type="button"].primary:hover,
				#main button.primary:hover,
				#main .button.primary:hover {
					background-color: #9acff2;
				}

				#main input[type="submit"].primary:active,
				#main input[type="reset"].primary:active,
				#main input[type="button"].primary:active,
				#main button.primary:active,
				#main .button.primary:active {
					background-color: #7ec3ee;
				}

				#main input[type="submit"].primary.icon:before,
				#main input[type="reset"].primary.icon:before,
				#main input[type="button"].primary.icon:before,
				#main button.primary.icon:before,
				#main .button.primary.icon:before {
					color: #ffffff !important;
				}

		#main label {
			color: #636363;
		}

		#main input[type="text"],
		#main input[type="password"],
		#main input[type="email"],
		#main select,
		#main textarea {
			background-color: rgba(222, 222, 222, 0.25);
			border-color: #dddddd;
		}

			#main input[type="text"]:focus,
			#main input[type="password"]:focus,
			#main input[type="email"]:focus,
			#main select:focus,
			#main textarea:focus {
				border-color: #8cc9f0;
				box-shadow: 0 0 0 1px #8cc9f0;
			}

		#main select {
			background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='40' height='40' preserveAspectRatio='none' viewBox='0 0 40 40'%3E%3Cpath d='M9.4,12.3l10.4,10.4l10.4-10.4c0.2-0.2,0.5-0.4,0.9-0.4c0.3,0,0.6,0.1,0.9,0.4l3.3,3.3c0.2,0.2,0.4,0.5,0.4,0.9 c0,0.4-0.1,0.6-0.4,0.9L20.7,31.9c-0.2,0.2-0.5,0.4-0.9,0.4c-0.3,0-0.6-0.1-0.9-0.4L4.3,17.3c-0.2-0.2-0.4-0.5-0.4-0.9 c0-0.4,0.1-0.6,0.4-0.9l3.3-3.3c0.2-0.2,0.5-0.4,0.9-0.4S9.1,12.1,9.4,12.3z' fill='%23dddddd' /%3E%3C/svg%3E");
		}

			#main select option {
				color: #636363;
				background: #ffffff;
			}

		#main input[type="checkbox"] + label,
		#main input[type="radio"] + label {
			color: #636363;
		}

			#main input[type="checkbox"] + label:before,
			#main input[type="radio"] + label:before {
				background: rgba(222, 222, 222, 0.25);
				border-color: #dddddd;
			}

		#main input[type="checkbox"]:checked + label:before,
		#main input[type="radio"]:checked + label:before {
			background-color: #636363;
			border-color: #636363;
			color: #ffffff;
		}

		#main input[type="checkbox"]:focus + label:before,
		#main input[type="radio"]:focus + label:before {
			border-color: #8cc9f0;
			box-shadow: 0 0 0 1px #8cc9f0;
		}

		#main ::-webkit-input-placeholder {
			color: rgba(99, 99, 99, 0.25) !important;
		}

		#main :-moz-placeholder {
			color: rgba(99, 99, 99, 0.25) !important;
		}

		#main ::-moz-placeholder {
			color: rgba(99, 99, 99, 0.25) !important;
		}

		#main :-ms-input-placeholder {
			color: rgba(99, 99, 99, 0.25) !important;
		}

		#main .formerize-placeholder {
			color: rgba(99, 99, 99, 0.25) !important;
		}

		#main .icon.major {
			border-color: #dddddd;
		}

			#main .icon.major:before {
				border-color: #dddddd;
			}

		#main .icon.alt {
			border-color: #dddddd;
			color: #636363;
		}

			#main .icon.alt:hover {
				background-color: rgba(222, 222, 222, 0.25);
			}

			#main .icon.alt:active {
				background-color: rgba(222, 222, 222, 0.5);
			}

		#main ul.alt li {
			border-top-color: #dddddd;
		}

		#main dl dt {
			color: #636363;
		}

		#main header.major h2:after {
			background-color: #dddddd;
			background-image: -moz-linear-gradient(90deg, #efa8b0, #a89cc8, #8cc9f0);
			background-image: -webkit-linear-gradient(90deg, #efa8b0, #a89cc8, #8cc9f0);
			background-image: -ms-linear-gradient(90deg, #efa8b0, #a89cc8, #8cc9f0);
			background-image: linear-gradient(90deg, #efa8b0, #a89cc8, #8cc9f0);
		}

		#main table tbody tr {
			border-color: #dddddd;
		}

			#main table tbody tr:nth-child(2n + 1) {
				background-color: rgba(222, 222, 222, 0.25);
			}

		#main table th {
			color: #636363;
		}

		#main table thead {
			border-bottom-color: #dddddd;
		}

		#main table tfoot {
			border-top-color: #dddddd;
		}

		#main table.alt tbody tr td {
			border-color: #dddddd;
		}

		#main .spotlight .image {
			border-color: #dddddd;
		}

		#main > .main {
			padding: 5em 5em 3em 5em ;
			border-top: solid 1px #dddddd;
		}

			#main > .main:first-child {
				border-top: 0;
			}

			#main > .main > .image.main:first-child {
				margin: -5em 0 5em -5em;
				width: calc(100% + 10em);
				border-top-right-radius: 0.25em;
				border-top-left-radius: 0.25em;
				border-bottom-right-radius: 0;
				border-bottom-left-radius: 0;
			}

				#main > .main > .image.main:first-child img {
					border-top-right-radius: 0.25em;
					border-top-left-radius: 0.25em;
					border-bottom-right-radius: 0;
					border-bottom-left-radius: 0;
				}

		@media screen and (max-width: 1280px) {

			#main > .main {
				padding: 4em 4em 2em 4em ;
			}

				#main > .main > .image.main:first-child {
					margin: -4em 0 4em -4em;
					width: calc(100% + 8em);
				}

		}

		@media screen and (max-width: 980px) {

			#main > .main {
				padding: 4em 3em 2em 3em ;
			}

				#main > .main > .image.main:first-child {
					margin: -4em 0 4em -3em;
					width: calc(100% + 6em);
				}

		}

		@media screen and (max-width: 736px) {

			#main > .main {
				padding: 3em 2em 1em 2em ;
			}

				#main > .main > .image.main:first-child {
					margin: -3em 0 2em -2em;
					width: calc(100% + 4em);
				}

		}

		@media screen and (max-width: 480px) {

			#main > .main {
				padding: 3em 1.5em 1em 1.5em ;
			}

				#main > .main > .image.main:first-child {
					margin: -3em 0 1.5em -1.5em;
					width: calc(100% + 3em);
				}

		}

		@media screen and (max-width: 360px) {

			#main {
				border-radius: 0;
			}

				#main > .main {
					padding: 2.5em 1em 0.5em 1em ;
				}

					#main > .main > .image.main:first-child {
						margin: -2.5em 0 1.5em -1em;
						width: calc(100% + 2em);
						border-radius: 0;
					}

						#main > .main > .image.main:first-child img {
							border-radius: 0;
						}

		}

/* Footer */

	#footer {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		-moz-flex-wrap: wrap;
		-webkit-flex-wrap: wrap;
		-ms-flex-wrap: wrap;
		flex-wrap: wrap;
		padding: 5em 5em 3em 5em ;
		width: calc(100% + 2em);
		margin: 0 0 3em -2em;
	}

		#footer > * {
			width: calc(50% - 2em);
			margin-left: 2em;
		}

		#footer .copyright {
			width: 100%;
			margin: 2.5em 0 2em 0;
			font-size: 0.8em;
			text-align: center;
		}

		@media screen and (max-width: 1280px) {

			#footer {
				padding: 4em 4em 2em 4em ;
			}

		}

		@media screen and (max-width: 980px) {

			#footer {
				padding: 4em 3em 2em 3em ;
				display: block;
				margin: 0 0 3em 0;
				width: 100%;
			}

				#footer > * {
					width: 100%;
					margin-left: 0;
					margin-bottom: 3em;
				}

				#footer .copyright {
					text-align: left;
				}

		}

		@media screen and (max-width: 736px) {

			#footer {
				padding: 3em 2em 1em 2em ;
			}

		}

		@media screen and (max-width: 480px) {

			#footer {
				padding: 3em 1.5em 1em 1.5em ;
			}

		}

		@media screen and (max-width: 480px) {

			#footer {
				padding: 2.5em 1em 0.5em 1em ;
			}

		}

/* Wrapper */

	#wrapper {
		width: 64em;
		max-width: calc(100% - 4em);
		margin: 0 auto;
	}

		@media screen and (max-width: 480px) {

			#wrapper {
				max-width: calc(100% - 2em);
			}

		}

		@media screen and (max-width: 360px) {

			#wrapper {
				max-width: 100%;
			}

		}
		
		/* Header */

	body.is-preload #header.alt > * {
		opacity: 1;
	}

	body.is-preload #header.alt .logo {
		-moz-transform: none;
		-webkit-transform: none;
		-ms-transform: none;
		transform: none;
	}
	.error, .error2, .error3, .error4, .error5, .error6 {
    width: 250px;
    height: 20px;
    height:auto;
    position: fixed;
    left: 50%;
    margin-left:-125px;
    bottom: 100px;
    z-index: 9999;
    background-color: #383838;
    color: #F0F0F0;
    font-family: Calibri;
    font-size: 15px;
    padding: 10px;
    text-align:center;
    border-radius: 2px;
    -webkit-box-shadow: 0px 0px 24px -1px rgba(56, 56, 56, 1);
    -moz-box-shadow: 0px 0px 24px -1px rgba(56, 56, 56, 1);
    box-shadow: 0px 0px 24px -1px rgba(56, 56, 56, 1);
} 
</style>

<jsp:include page="/WEB-INF/views/template/banner.jsp"></jsp:include>
	
	<body class="is-preload">
	
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						
						<h1 id="c_name" style="color:white;">${center.c_name}</h1>
						
						<p>${center.c_loadaddress}<br /></p>
					</header>

				<!-- Nav -->
					<nav id="nav">
					<ul>
			
      						<li  ><a href="#" class="aa" style="color:white; background-color:black;">Center</a></li>	

      						<p><input type="hidden" name="tf_loadaddress" class="sticky_btn"  value="${tf_loadaddress}" id="tf_loadaddress"></p>
							<p><input type="hidden" name="c_name" class="sticky_btn"  value="${c_name}" id="c_name"></p>
							<p><input type="hidden" name="u_key" class="sticky_btn"  value="${u_key}" id="u_key"></p>
							
						</ul>
						<ul>
							<li><a class="aa" href="#intro" class="active" style="color:black">센터 소개</a></li>
							<li><a class="aa" style="color:black" href="#first">센터 사진</a></li>
							<li><a class="aa" style="color:black" href="#second">운영 시간</a></li>
							<li><a class="aa" style="color:black" href="#cta">오시는 길</a></li>
					
						</ul>
						
					</nav>
			
				<!-- Main -->
					<div id="main">

						<!-- Introduction -->
							<section id="intro" class="main">
								<div class="spotlight">
									<div class="content">
										<header class="major">
										
											<h2><Strong style="color:black">센터 소개</Strong></h2>
										</header>
										<p style="color:black">${center.c_intro}</p>
										
									</div>
											<div class="slider2" style="margin-left:25px;">
		<c:forEach var="filelist" items="${filelist}">
		
		  <div style="margin-left:-50px;"><a  href="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}"  data-lightbox="example-set4"><span class="image"><img src="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}" ></span></a>
</div>
		  
		  </c:forEach> 
    </div>
									
								</div>
							</section>

						<!-- First Section -->
							<section id="first" class="main special">
								<header class="major">
								
									<h2><Strong  style="color:black">센터 사진</Strong></h2>
									
									<c:forEach var="filelist" items="${filelist}">
											<a  href="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}"  data-lightbox="example-set5"><span class="image"><img src="http://15.164.62.221:8080/static/img/health/img/${filelist.file_name}" ></span></a>
									</c:forEach>
									
									
								
								</header>
								<ul class="features">
									<li>
										<span class="icon solid major style1 fa-code"></span>
										<h5><Strong style="color:black">${center.c_inform}</Strong></h5>
									</li>
									<li>
										<span class="icon major style3 fa-copy"></span>
										<h5><Strong style="color:black">${center.c_inform}</strong></h5>
									</li>
									<li>
										<span class="icon major style5 fa-gem"></span>
										<h5><Strong style="color:black">${center.c_inform}</Strong></h5>
									</li>
									
										<p style="color:black; margin-top:40px;">${trainerprofile.tf_programintro}</p>
								</ul>
								
								<footer class="major">
								
									
								</footer>
							</section>

						<!-- Second Section -->
							<section id="second" class="main special">
								<header class="major">
								<h2 ><Strong style="color:black">운영 시간</Strong></h2>
									
								</header>
								<ul class="statistics">
									<li class="style1">
										<span class="icon solid fa-code-branch"></span>
										<strong>평일</strong> ${center.c_daymorning } ~  ${center.c_dayafter }
									</li>
									<li class="style2">
										<span class="icon fa-folder-open"></span>
										<strong>토요일</strong> ${center.c_satermorning } ~  ${center.c_saterafter }
									</li>
									<li class="style3">
										<span class="icon solid fa-signal"></span>
										<strong>일요일</strong> ${center.c_sunmorning } ~  ${center.c_sunafter }
									</li>
									<li class="style4">
										<span class="icon solid fa-laptop"></span>
										<strong>휴무일</strong> ${center.c_dayoff }
									</li>
									<li class="style5">
										<span class="icon fa-gem"></span>
										<strong>참고사항</strong> ${trainerprofile.tf_lessonintro }
									</li>
								</ul>
							
							</section>

						<!-- Get Started -->
							<section id="cta" class="main special">
								<header class="major">
							<h2 ><Strong style="color:black">오시는 길</Strong></h2>
							
							
							
							
								<ul class="features">
									<li>
										<div id="map" style="width:600px; height:350px;"></div>
									</li>
									<li>
								
									</li>
									<li>
										<span class=""></span>
										<h5 style="text-align:left;"><Strong style="color:black;">우편번호</Strong></h5>
										<p style="color:black; text-align:left;">${center.c_postcode }</p>
										<h5 style="text-align:left;"><Strong style="color:black;">도로명주소</Strong></h5>
										<p style="color:black; text-align:left;">${center.c_loadaddress }</p>
										<h5 style="text-align:left;"><Strong style="color:black;">지번주소</Strong></h5>
										<p style="color:black; text-align:left;">${center.c_oldaddress }</p>
										<h5 style="text-align:left;"><Strong style="color:black;">상세주소</Strong></h5>
										<p style="color:black; text-align:left;">${center.c_detailaddress }</p>
										<p style="color:black; text-align:left;">${center.c_option }</p>
									</li>
									
										<p style="color:black; margin-top:40px;">${trainerprofile.tf_programintro}</p>
								</ul>

	<!-- Button trigger modal -->

<sec:authorize access="hasRole('ROLE_ADMIN')">
	<c:if test="${(center.c_confirm=='1')}">
		<button type="button" class="btn btn-success" disabled >
  			승인완료
		</button>
		<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#cancelModal">
  			승인취소
		</button>
	</c:if>
	<c:if test="${(center.c_confirm=='2')}">
		<button type="button" class="btn btn" style="background-color:red;" disabled  >
  			반려완료
		</button>
		<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#cancelModal">
  			반려취소
		</button>
		<h5 style="text-align:center;"><Strong style="color:red;">반려사유 : ${center.c_rejectreason}</Strong></h5>
		
	</c:if>
	
	<c:if test="${(center.c_confirm=='0')}">
		<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#exampleModal">
  			승인
		</button>
		<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#rejectModal">
  			반려
		</button>
	</c:if>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_USER')">
<c:if test="${center.c_confirm==1}">
	<c:if test="${(center.c_loadaddress==trainerprofile.tf_loadaddress)}">
		<button type="button" class="btn btn-success" disabled >
  			센터프로필저장완료
		</button>
		<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#centerprofilecancelModal">
  			센터프로필취소
		</button>
	</c:if>
	
	<c:if test="${(center.c_loadaddress!=trainerprofile.tf_loadaddress)}">
		<c:if test="${center.c_confirm==1 }">
		<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#centerprofileconfirmModal">
  			센터프로필저장
		</button>
		</c:if>
	</c:if>
</c:if>	
<c:if test="${center.c_confirm==0 || center.c_confirm==2}">
		<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#centerprofiledeleteModal">
  			삭제
		</button>
</c:if>
	<sec:authentication property="principal" var="principal" />	
	<c:if test="${(center.u_key==principal.u_key)}">
		<c:if test="${center.c_confirm==2}">		
			<h5 style="text-align:center;"><Strong style="color:red;">반려사유 : ${center.c_rejectreason}</Strong></h5>
		</c:if>
	</c:if>
</sec:authorize>
<input type="hidden" value="${toast}" id="toastcheck">		
<div class='error' style='display:none'>삭제완료</div>
<div class='error2' style='display:none'>등록완료</div>
<div class='error3' style='display:none'>취소완료</div>	
<div class='error4' style='display:none'>승인완료</div>
<div class='error5' style='display:none'>취소완료</div>	
<div class='error6' style='display:none'>반려완료</div>

<!-- 승인하기 Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">센터 검토</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="text-align:left;">
        정말 승인하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark"" data-bs-dismiss="modal">취소하기</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickConfirm(centerInfo)">승인하기</button>
      </div>
    </div>
  </div>
</div>
<!-- 반려하기 Modal -->
<div class="modal fade" id="rejectModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">센터 검토</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="text-align:left;">
          정말 반려 하시겠습니까? 확인을 누르시면 반려상태로 변경됩니다. (반려상태는 센터리스트에 노출X) 
      </div>
      <label for="myTextarea" class="form-label" style="font-size: 15px; text-align:left; margin-left:15px; margin-bottom:-10px"><Strong>반려사유 상세히 작성해주세요.</Strong></label>
			<div class="input-group has-validation" style="padding:10px;">
				<textarea  class="form-control" name="tf_programintro" id="rejectreason" placeholder="반려사유를 입력해주세요"></textarea>
			</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark"" data-bs-dismiss="modal">취소하기</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickReject(centerInfo)">반려하기</button>
      </div>
    </div>
  </div>
</div>
<!-- 센터프로필저장 Modal -->
<div class="modal fade" id="centerprofileconfirmModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">센터 저장</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="text-align:left">
        정말 해당센터를 센터프로필로 저장하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark"" data-bs-dismiss="modal">취소하기</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickcenterprofileConfirm(centerInfo)">승인하기</button>
      </div>
    </div>
  </div>
</div>
<!-- 센터프로필 삭제 Modal -->
<div class="modal fade" id="centerprofiledeleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">센터 삭제</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="text-align:left">
        정말 해당센터를 삭제하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark"" data-bs-dismiss="modal">취소하기</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickcenterprofileDelete(centerInfo)">삭제하기</button>
      </div>
    </div>
  </div>
</div>

<!-- 승인취소 Modal -->
<div class="modal fade" id="cancelModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">센터 검토</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="text-align:left;">
        정말 취소하시겠습니까? 확인을 누르면 승인대기상태로 변경됩니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickConfirmCancel(centerInfo)">확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 센터프로필취소 Modal -->
<div class="modal fade" id="centerprofilecancelModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color:black;">센터 저장</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="text-align:left">
        정말 센터프로필 저장을 취소하시겠습니까? 확인을 누르면 등록된 센터프로필이 삭제됩니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-primary" onclick="clickcenterprofileCancel(centerInfo)">확인</button>
      </div>
    </div>
  </div>
</div>
<!-- 승인하기 누르면 넘어갈 데이타 -->
<form name="centerInfo">
	<input type="hidden" name="c_id" value="${center.c_id}">
	<input type="hidden" name="c_rejectreason" id="c_rejectreason">
	<input type="hidden" name="c_loadaddress" value="${center.c_loadaddress}">
	<sec:authentication property="principal" var="principal" />
	<input type="hidden" name="trainerprofile_u_key" value="${principal.u_key}">
</form>

	
	
	
	
	
							
								</header>

							</section>

				
</div>
				<!-- Footer -->
					<footer id="footer">
						<section>
							<h2>Health Catch</h2>
							<p>사업자등록번호 000-00-00000</p>
							<p> 통신판매업신고 : 제 0000-서울마포-0000호 | 대표 : 홍길동</p>
							<p> 주소 : 서울특별시 구로구 디지털로00길 00, 0층 000호</p>
							<p> 고객센터 및 제휴문의 : support@healthcatch.co.kr</p>
							<ul class="actions">
								<li><a href="generic.html" class="button">Learn More</a></li>
							</ul>
						</section>
						<section>
							<h2>고객센터</h2>
							<dl class="alt">
								<dt>Address</dt>
								<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
								<dt>Phone</dt>
								<dd>(000) 000-0000 x 0000</dd>
								<dt>Email</dt>
								<dd><a href="#">information@untitled.tld</a></dd>
							</dl>
							<ul class="icons">
								<li><a href="#" class="icon brands fa-twitter alt"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f alt"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram alt"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-github alt"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble alt"><span class="label">Dribbble</span></a></li>
							</ul>
						</section>
						<p class="copyright">&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
					</footer>


			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
	
<script>
window.addEventListener('load', function() {
	  var postDeleted = sessionStorage.getItem('postDeleted');
	  var postInserted = sessionStorage.getItem('postInserted');
	  var postModifyed = sessionStorage.getItem('postModifyed');
	  var postconfirm = sessionStorage.getItem('postconfirm');
	  var postreject = sessionStorage.getItem('postreject');
	  var postconfirmcancel = sessionStorage.getItem('postconfirmcancel');
	  	  if (postDeleted) {
		  $('.error').fadeIn(400).delay(1000).fadeOut(400); //fade out after 3 seconds
	    // 삭제 상태 제거
	    sessionStorage.removeItem('postDeleted');
	  }
	  	 if (postInserted) {
			  $('.error2').fadeIn(400).delay(1000).fadeOut(400); //fade out after 3 seconds
		    // 작성 상태 제거
		    sessionStorage.removeItem('postInserted');
		  }
	  	 if (postModifyed) {
			  $('.error3').fadeIn(400).delay(1000).fadeOut(400); //fade out after 3 seconds
		    // 수정 상태 제거
		    sessionStorage.removeItem('postModifyed');
		  }
	  	if (postconfirm) {
			  $('.error4').fadeIn(400).delay(1000).fadeOut(400); //fade out after 3 seconds
		   
		    sessionStorage.removeItem('postconfirm');
		  }
		if (postconfirmcancel) {
			  $('.error5').fadeIn(400).delay(1000).fadeOut(400); //fade out after 3 seconds
		   
		    sessionStorage.removeItem('postconfirmcancel');
		  }
		if (postreject) {
			  $('.error6').fadeIn(400).delay(1000).fadeOut(400); //fade out after 3 seconds
		   
		    sessionStorage.removeItem('postreject');
		  }
	});


var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
let tf_loadaddress = $('#tf_loadaddress').val();
let c_name = $('#c_name').val();
// 주소로 좌표를 검색합니다
geocoder.addressSearch(tf_loadaddress, function(result, status) {
	console.log("tf_loadaddress:centertest"+tf_loadaddress);
    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${c_name}</div>'
            
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    

function Centerview(test) {
	
	  let tf_loadaddress = $('#tf_loadaddress').val();
	  let u_key = $('#u_key').val();
	  
		console.log('tf_loadaddress:test'+tf_loadaddress);
		console.log('u_key:'+u_key);
		console.log('센터에서 센터 클릭');
		$.ajax({
			method: "POST",
			url: "/aj-centerview2",
			data: { tf_loadaddress: tf_loadaddress , u_key : u_key}
		})
		.done(function( html ) {
			console.log(html);
			$('#centerview').html(html);
		     $( '.slider2' ).slick( {
			          autoplay: true,
			          autoplaySpeed: 1000,
			        } );
			     
			   
		});
		
}
</script>
<!-- 승인하기 누르면 발생 -->
<script>
	function clickConfirm(formName) {
		formName.action = "/centerConfirm";
		sessionStorage.setItem('postconfirm', 'true');
		formName.method = "post";
		formName.submit();
	}
</script>
<!-- 반려하기 누르면 발생 -->
<script>
	function clickReject(formName) {
		 var textarea = document.getElementById("rejectreason");
		  var text = textarea.value;
		//반려사유가 필수로 입력되어야하는 조건
		  if (text.trim() === "") {
			    // 값이 입력되지 않은 경우에 대한 처리
			    console.log("값이 입력되지 않았습니다.");
			    alert("반려사유를 입력해주세요.")
			    // 여기에 추가적인 동작을 원하는 대로 작성하세요.
			  } else {
			    // 값이 입력된 경우에 대한 처리
			   formName.action = "/centerReject";
		sessionStorage.setItem('postreject', 'true');
		formName.method = "post";
		formName.submit();
			    // 여기에 추가적인 동작을 원하는 대로 작성하세요.
			  }	
	}
</script>

<!-- 센터프로필 저장하기 누르면 발생 -->
<script>
	function clickcenterprofileConfirm(formName) {
		formName.action = "/clickcenterprofileConfirm";
		sessionStorage.setItem('postconfirm', 'true');
		formName.method = "post";
		formName.submit();
	}
</script>
<!-- 센터프로필 삭제하기 누르면 발생 -->
<script>
	function clickcenterprofileDelete(formName) {
		formName.action = "/clickcenterprofileDelete";
		sessionStorage.setItem('postdelete', 'true');
		formName.method = "post";
		formName.submit();
	}
</script>

<!-- 센터프로필 취소하기 누르면 발생 -->
<script>
	function clickcenterprofileCancel(formName) {
		formName.action = "/clickcenterprofileCancel";
		sessionStorage.setItem('postconfirmcancel', 'true');
		formName.method = "post";
		formName.submit();
	}
</script>

<!-- 승인취소하기 누르면 발생 -->
<script>
	function clickConfirmCancel(formName) {
		formName.action = "/centerConfirmCancel";
		sessionStorage.setItem('postModifyed', 'true');
		formName.method = "post";
		formName.submit();
	}
</script>

<script>
function handleInputChange() {
	  var textarea = document.getElementById("rejectreason");
	  var text = textarea.value;
	  var c_rejectreason = document.getElementById("c_rejectreason");
	  c_rejectreason.value=text;
	}

	var textarea = document.getElementById("rejectreason");
	textarea.addEventListener("input", handleInputChange);
</script>
</html>