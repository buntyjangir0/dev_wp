<?php get_header(); ?>
    <div id="site_content">
      <div id="banner"></div>
	  <?php get_sidebar(); ?>
      <div id="content">
        
  <?php

  
      if(have_posts()){
            while(have_posts()){
              the_post();
             the_title('<h1>', '</h1>');
             the_content();
            }
      } else {
        echo "no content";
      }
   ?>


        
      </div>
    </div>
    <?php
get_footer();
     //include('footer.php'); ?>
