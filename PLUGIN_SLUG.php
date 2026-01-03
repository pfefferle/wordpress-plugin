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

defined( 'ABSPATH' ) || exit;

define( 'PLUGIN_FUNCTION_PREFIX_VERSION', '1.0.0' );
define( 'PLUGIN_FUNCTION_PREFIX_PLUGIN_DIR', plugin_dir_path( __FILE__ ) );
define( 'PLUGIN_FUNCTION_PREFIX_PLUGIN_URL', plugin_dir_url( __FILE__ ) );
define( 'PLUGIN_FUNCTION_PREFIX_PLUGIN_FILE', __FILE__ );

/**
 * Initialize the plugin.
 *
 * @return void
 */
function PLUGIN_FUNCTION_PREFIX_init() {
	// Load text domain for translations.
	load_plugin_textdomain( 'PLUGIN_SLUG', false, dirname( plugin_basename( __FILE__ ) ) . '/languages' );

	// Initialize plugin functionality here.
}
add_action( 'plugins_loaded', 'PLUGIN_FUNCTION_PREFIX_init' );

/**
 * Plugin activation hook.
 *
 * @return void
 */
function PLUGIN_FUNCTION_PREFIX_activate() {
	// Activation tasks here.
}
register_activation_hook( __FILE__, 'PLUGIN_FUNCTION_PREFIX_activate' );

/**
 * Plugin deactivation hook.
 *
 * @return void
 */
function PLUGIN_FUNCTION_PREFIX_deactivate() {
	// Deactivation tasks here.
}
register_deactivation_hook( __FILE__, 'PLUGIN_FUNCTION_PREFIX_deactivate' );
