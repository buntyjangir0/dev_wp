<?php 
function register_script(){
	wp_enqueue_style('main_style', get_template_directory_uri().'/style.css');
	wp_enqueue_style('site_style', get_template_directory_uri().'/style/style.css');
	wp_enqueue_script('custom_tst', get_template_directory_uri().'/js/custom.js', array(), '1.0', true);
}
add_action('wp_enqueue_scripts', 'register_script');



function register_menu(){
	register_nav_menus(
		array(
			'primary-menu' => 'Primary Main Menu',
			'footer-menu' => 'Footer Menu'
		)
	);
}
add_action("init", "register_menu");


function selected_class($classes, $item){
	if(in_array('current-menu-item', $classes)) {
		$classes[] = 'selected';
	}
	return $classes;
}
add_filter('nav_menu_css_class', 'selected_class', 10,2);


/**
 * Add a sidebar.
 */

function custom_siderbar(){
	$arg = 
		array(
        'name'          => __( 'Left-sidebar', 'textdomain' ),
        'id'            => 'sidebar-1',
        'description'   => __( 'Widgets in this area will be shown on all posts and pages.', 'textdomain' ),
        'before_widget' => '<div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">',
        'after_widget'  => '</div>
          <div class="sidebar_base"></div>
        </div>',
        'before_title'  => '<h3>',
        'after_title'   => '</h3>',
    ); 
	register_sidebar($arg);


	$arg_footer = 
		array(
        'name'          => __( 'Footer', 'textdomain' ),
        'id'            => 'footer-1',
        'description'   => __( 'Widgets in this area will be shown on all posts and pages.', 'textdomain' ),
        'before_widget' => '<div>',
        'after_widget'  => '</div>
          <div class="sidebar_base"></div>
        </div>',
        'before_title'  => '<h3>',
        'after_title'   => '</h3>',
    ); 
	register_sidebar($arg_footer);


}
add_action( 'widgets_init', 'custom_siderbar' );

//post thumbnail 
add_theme_support( 'post-thumbnails' );
//for custom logo
add_theme_support( 'custom-logo' );

//for custom header
add_theme_support( 'custom-header' );


?>