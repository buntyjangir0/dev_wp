<?php get_header(); ?>
    <div id="site_content">
      <div id="banner"><img alt="" src="<?php header_image(); ?>" width="<?php echo absint( get_custom_header()->width ); ?>" height="<?php echo absint( get_custom_header()->height ); ?>"></div>
	  <?php get_sidebar(); ?>
      <div id="content">
        front page file
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


        <form method="post" id="mainform" name="mainform" accept-charset="utf-8">
          
          <input type="text" name="name"><br>
          <input type="text" name="email"><br>
          <input type="button" name="submit" id="submitid" value="Submit">
        </form>



      </div>
    </div>
    <?php
get_footer();
     //include('footer.php'); ?>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script type="text/javascript">
        $(document).ready(function() {
           $("#submitid").click(function(event) {
              var url = "<?php echo get_site_url(); ?>/wp-json/custom/v1/myapi";
            //var data =  $('#mainform').serialize();
            // var data
              $.ajax({
                    url: url,
                    type:'POST',
                    data: $('#mainform').serialize(),
                    success:function(result){
                      //  $("#response").text(result);
                        alert(result.name);
                    }
                  });

           });
        });
      </script>
