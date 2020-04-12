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

//custom post type

/**
 * Register a custom post type called "book".
 *
 * @see get_post_type_labels() for label keys.
 */
function custom_book_posttype() {
    $labels = array(
        'name'                  => _x( 'Books', 'Post type general name', 'textdomain' ),
        'singular_name'         => _x( 'Book', 'Post type singular name', 'textdomain' ),
        'menu_name'             => _x( 'Books', 'Admin Menu text', 'textdomain' ),
        'name_admin_bar'        => _x( 'Book', 'Add New on Toolbar', 'textdomain' ),
        'add_new'               => __( 'Add New BOOK', 'textdomain' ),
        'add_new_item'          => __( 'Add New Book for new test', 'textdomain' ),
        'new_item'              => __( 'New Book', 'textdomain' ),
        'edit_item'             => __( 'Edit Book', 'textdomain' ),
        'view_item'             => __( 'View  Book', 'textdomain' ),
        'all_items'             => __( 'All Books', 'textdomain' ),
        'search_items'          => __( 'Search Books', 'textdomain' ),
        'parent_item_colon'     => __( 'Parent Books:', 'textdomain' ),
        'not_found'             => __( 'No books found.', 'textdomain' ),
        'not_found_in_trash'    => __( 'No books found in Trash.', 'textdomain' ),
        'featured_image'        => _x( 'Book Cover Image', 'Overrides the “Featured Image” phrase for this post type. Added in 4.3', 'textdomain' ),
        'set_featured_image'    => _x( 'Set cover image', 'Overrides the “Set featured image” phrase for this post type. Added in 4.3', 'textdomain' ),
        'remove_featured_image' => _x( 'Remove cover image', 'Overrides the “Remove featured image” phrase for this post type. Added in 4.3', 'textdomain' ),
        'use_featured_image'    => _x( 'Use as cover image', 'Overrides the “Use as featured image” phrase for this post type. Added in 4.3', 'textdomain' ),
        'archives'              => _x( 'Book archives', 'The post type archive label used in nav menus. Default “Post Archives”. Added in 4.4', 'textdomain' ),
        'insert_into_item'      => _x( 'Insert into book', 'Overrides the “Insert into post”/”Insert into page” phrase (used when inserting media into a post). Added in 4.4', 'textdomain' ),
        'uploaded_to_this_item' => _x( 'Uploaded to this book', 'Overrides the “Uploaded to this post”/”Uploaded to this page” phrase (used when viewing media attached to a post). Added in 4.4', 'textdomain' ),
        'filter_items_list'     => _x( 'Filter books list', 'Screen reader text for the filter links heading on the post type listing screen. Default “Filter posts list”/”Filter pages list”. Added in 4.4', 'textdomain' ),
        'items_list_navigation' => _x( 'Books list navigation', 'Screen reader text for the pagination heading on the post type listing screen. Default “Posts list navigation”/”Pages list navigation”. Added in 4.4', 'textdomain' ),
        'items_list'            => _x( 'Books list', 'Screen reader text for the items list heading on the post type listing screen. Default “Posts list”/”Pages list”. Added in 4.4', 'textdomain' ),
    );
 
    $args = array(
        'labels'             => $labels,
        'public'             => true,
        'publicly_queryable' => true,
        'show_ui'            => true,
        'show_in_menu'       => true,
        'query_var'          => true,
        'rewrite'            => array( 'slug' => 'book' ),
        'capability_type'    => 'post',
        'has_archive'        => true,
        'hierarchical'       => false,
        'menu_position'      => null,
        'supports'           => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments' ),
    );
 
   register_post_type( 'book', $args );
}
 
add_action( 'init', 'custom_book_posttype' );

?>