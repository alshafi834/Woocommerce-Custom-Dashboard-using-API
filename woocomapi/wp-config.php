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
define('DB_NAME', 'projectapi');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'dEQk9)ln{HoWMv$mfzoKj@RT>.~)5|d@Qv-,~A#A9pk<jKh04CX[tPLh %d,Mi;}');
define('SECURE_AUTH_KEY',  'I1Ut)oMi1gZkU(F6t+LtjG#@mLLU+*TDrO:.c[B[qE@].iFQ0C9i!2B;z&k7oIXp');
define('LOGGED_IN_KEY',    'l*vxYYhXCGm8h}r$OXhFgz6*M#5;@l#]#7R|/iLQ:2m&:0QcbEt~mNGp}@SAl*>x');
define('NONCE_KEY',        'ejp Vob.?>,HACHNYVdOuiyv>BD5Np^zvpjb-d1GjU58,y 2vCY^_CiV(Nj0@<FY');
define('AUTH_SALT',        'MswDFUG`74.M]URUh(sL)isQub2KjN$l{YV^szmjwdp`QqPf4blf3wov9&5mGKl2');
define('SECURE_AUTH_SALT', 'fi4=0.TUGMyr%V*Sat|!4v-s=O^%)b,hNed|AH={Zv>*qPt9r#uOWGg2^HDs8n$l');
define('LOGGED_IN_SALT',   'j+}_04cY_75xLr%dPkRF0p]:O7I*^hLeNvc kn,d2=`szu+zOJ;oMD9X >T+gtb]');
define('NONCE_SALT',       'hplNDTdAO=>~e~p/[;]#616SHl):yC!4I5:nG?8{jN, x.`V_=fH:q|40Mj)Dv^L');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
