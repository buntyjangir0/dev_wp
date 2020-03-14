<!DOCTYPE HTML>
<html>

<head>
  <title><?php echo get_bloginfo('name'); ?> | <?php echo get_bloginfo('description'); ?></title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  
  <?php wp_head(); ?>
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">simple<span class="logo_colour">style_horizon</span></a></h1>
          <h2>Simple. Contemporary. Website Template.</h2>
        </div>
      </div>
      <div id="menubar">
        <?php
          wp_nav_menu(
              array(
                'menu' => 'primary-menu',
                'container' => '',
                'items_wrap' => '<ul id="menu">%3$s</u>'
              )
          );
         ?>
        <!-- <ul id="menu">
          
          <li class="selected"><a href="index.html">Home</a></li>
          <li><a href="examples.html">Examples</a></li>
          <li><a href="page.html">A Page</a></li>
          <li><a href="another_page.html">Another Page</a></li>
          <li><a href="contact.html">Contact Us</a></li>
        </ul> -->
      </div>
    </div>
    <div id="content_header"></div>