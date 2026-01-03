<?php
/**
 * Plugin Name: PLUGIN_NAME
 * Plugin URI: https://github.com/PLUGIN_VENDOR/PLUGIN_SLUG
 * Description: PLUGIN_DESCRIPTION
 * Version: 1.0.0
 * Author: PLUGIN_AUTHOR
 * Author URI: https://example.com/
 * License: GPL-2.0-or-later
 * License URI: https://www.gnu.org/licenses/gpl-2.0.html
 * Text Domain: PLUGIN_SLUG
 * Domain Path: /languages
 * Requires at least: 6.0
 * Requires PHP: 7.4
 *
 * @package PLUGIN_CLASS_PREFIX
 */

namespace PLUGIN_CLASS_PREFIX;

\defined( 'ABSPATH' ) || exit;

\define( 'PLUGIN_FUNCTION_PREFIX_VERSION', '1.0.0' );
\define( 'PLUGIN_FUNCTION_PREFIX_PLUGIN_DIR', \plugin_dir_path( __FILE__ ) );
\define( 'PLUGIN_FUNCTION_PREFIX_PLUGIN_URL', \plugin_dir_url( __FILE__ ) );
\define( 'PLUGIN_FUNCTION_PREFIX_PLUGIN_FILE', __FILE__ );

// Load autoloader.
require_once __DIR__ . '/includes/class-autoloader.php';

// Register autoloader.
Autoloader::register_path( __NAMESPACE__, __DIR__ . '/includes' );

// Register hooks.
\register_activation_hook( __FILE__, array( Plugin::class, 'activate' ) );
\register_deactivation_hook( __FILE__, array( Plugin::class, 'deactivate' ) );
\register_uninstall_hook( __FILE__, array( Plugin::class, 'uninstall' ) );

// Initialize plugin.
\add_action( 'plugins_loaded', array( Plugin::class, 'init' ) );
