<?php get_header(); ?>
    <div id="site_content">
      <div id="banner"><img alt="" src="<?php header_image(); ?>" width="<?php echo absint( get_custom_header()->width ); ?>" height="<?php echo absint( get_custom_header()->height ); ?>"></div>
	  <?php get_sidebar(); ?>
      <div id="content">
        <h2>Search Result</h2>
  <?php

  
      if(have_posts()){
            while(have_posts()){
              the_post();
              the_title('<h1>', '</h1>');
              the_post_thumbnail(array( 100, 100 ));
             
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
