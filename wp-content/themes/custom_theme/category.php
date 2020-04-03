<?php get_header(); ?>
    <div id="site_content">
      <div id="banner"><img alt="" src="<?php header_image(); ?>" width="<?php echo absint( get_custom_header()->width ); ?>" height="<?php echo absint( get_custom_header()->height ); ?>"></div>
	  <?php get_sidebar(); ?>
      <div id="content">
        category file
  <?php

  
      if(have_posts()){
            while(have_posts()){
              the_post();
               ?><a href="<?php the_permalink(); ?>"> <?php the_title('<h1>', '</h1>'); ?></a> <?php 
              the_post_thumbnail(array( 100, 100 ));
             the_excerpt();
             ?> 
             <a href="<?php the_permalink(); ?>">Read more..</a>
             <?php
             //the_content();
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
