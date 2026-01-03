<?php
/**
 * Main Plugin Class.
 *
 * @package PLUGIN_CLASS_PREFIX
 */

namespace PLUGIN_CLASS_PREFIX;

/**
 * Main Plugin Class.
 */
class Plugin {

	/**
	 * Initialize the plugin.
	 */
	public static function init() {
		// Register hooks here.
	}

	/**
	 * Plugin activation hook.
	 *
	 * @param bool $network_wide Whether to activate for all sites in the network.
	 */
	public static function activate( $network_wide ) {
		\flush_rewrite_rules();
	}

	/**
	 * Plugin deactivation hook.
	 *
	 * @param bool $network_wide Whether to deactivate for all sites in the network.
	 */
	public static function deactivate( $network_wide ) {
		\flush_rewrite_rules();
	}

	/**
	 * Plugin uninstall hook.
	 */
	public static function uninstall() {
		// Clean up options, transients, etc.
	}
}
