<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_tuts' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'u1Mf-db655NMjkrS}TtmThrKd6` 2SkXc&G$xr^H{-#sOl1O5Xr5,&n+_-tI%F#@' );
define( 'SECURE_AUTH_KEY',  '.np`({.+HYXHg!oN:E7[:gz9K>dvHDM;{k>Z4U,<ABlj694cJt5X?kn1)3 Jt*P[' );
define( 'LOGGED_IN_KEY',    '^6CKYUbE$_ .&5;gJ74L98t`#wN.$a2DnvA8B~@>DLceY}m^m TR*xk(C*9p`m2:' );
define( 'NONCE_KEY',        'KG50aLvv|nJ. M<k]J;L}m.) pdZKTS2QZ:7^e/Oy?Rj=CNf]Ag*,PpBe+]Gkb-[' );
define( 'AUTH_SALT',        'EWI{e%!f<(SIO;cf|xe>)d)Sjn `gxXzj]fpY.vSrIYd%ZBsT Lb?} m(V 6Sm@=' );
define( 'SECURE_AUTH_SALT', ';&p13~ FtzTAVW1VucDDEaRYmI`MO6lB+sr4k}&%!beT~*xx!GZ6F#r2|~?DkZ^/' );
define( 'LOGGED_IN_SALT',   'e)MJc2$PRG8&bsV[St<ewSyP}(uXmD`d5+gxb>!|TM; ?zY;o1tOzH3hMjOa|wAq' );
define( 'NONCE_SALT',       '#6/R~O4Ah?UK%QPfnR(Y}&ix!Rf&*{G3VFoBT5{&^dW2Go2ZiT:*h|MRl4K/-Wsr' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wptuts_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', true );

define('FS_METHOD','direct'); 

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
