<?php get_header(); ?>
    <div id="site_content">
      <div id="banner"><img alt="" src="<?php header_image(); ?>" width="<?php echo absint( get_custom_header()->width ); ?>" height="<?php echo absint( get_custom_header()->height ); ?>"></div>
	  <?php get_sidebar(); ?>
      <div id="content">
        404 file
  <?php

  
      echo "<h2>This page not found go back</h2>";
   ?>
<?php get_search_form(); ?>

        
      </div>
    </div>
    <?php
get_footer();
     //include('footer.php'); ?>
