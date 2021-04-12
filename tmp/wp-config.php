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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'heom' );

/** MySQL database password */
define( 'DB_PASSWORD', 'heom' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         'VX3D}]B)5f6-|-F+NF#d-JB=~|UW*vdawb6%VwMiAd>UUh{o+m25MSa/)L):m9gP');
define('SECURE_AUTH_KEY',  'bnOxRRsOEH%PJ>$hVK4LVBZN$OGfWAb4Hekx+]fmGqr-&FBHnNW[+gvi3z#txh%n');
define('LOGGED_IN_KEY',    'Pp.`*+5-sVL@HK< _kH5|Sfq UT*yg&187^hC~kkOs$/.`Y,/(aHE6]szfBtK=Pt');
define('NONCE_KEY',        ']k+=_G.2<t|{K[a7mQ=M +5mizdROaGfUi9an6~<t8*|DXvb+e-ezN:~,7S%kR3-');
define('AUTH_SALT',        'IB8t,?]<8=MRY$d|DpG&bc]_D*PF 9QhH_0O+2ZI>D+Ikr;BVU/m{O7R3L:d!qfn');
define('SECURE_AUTH_SALT', ' kiSqj,H5|it~-}u&5Jfa*G|TCm*rg5/_0DkCdpz*iMud]+<EUII_Uu%ogJF5g;+');
define('LOGGED_IN_SALT',   '6l?06{eC+~}@-9:~V*]D8,G/_5zx[HTYHk-6--*}9VcmEoc>jLGFRO.O3#6&X<>(');
define('NONCE_SALT',       'mH&mR?<_gZ<13WYtt)a./xMS8RG e|KFB|mY4V_]e_[[lvplQL8F9qQG-M{0s~J*');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
