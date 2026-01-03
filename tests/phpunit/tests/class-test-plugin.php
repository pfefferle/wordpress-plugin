<?php
/**
 * Plugin test class.
 *
 * @package PLUGIN_CLASS_PREFIX
 */

/**
 * Test the main Plugin class.
 */
class Test_Plugin extends WP_UnitTestCase {

	/**
	 * Test that the plugin class exists.
	 */
	public function test_plugin_class_exists() {
		$this->assertTrue(
			class_exists( 'PLUGIN_CLASS_PREFIX\Plugin' ),
			'Plugin class should exist'
		);
	}

	/**
	 * Test that the autoloader class exists.
	 */
	public function test_autoloader_class_exists() {
		$this->assertTrue(
			class_exists( 'PLUGIN_CLASS_PREFIX\Autoloader' ),
			'Autoloader class should exist'
		);
	}

	/**
	 * Test that plugin constants are defined.
	 */
	public function test_plugin_constants_defined() {
		$this->assertTrue( defined( 'PLUGIN_FUNCTION_PREFIX_VERSION' ) );
		$this->assertTrue( defined( 'PLUGIN_FUNCTION_PREFIX_PLUGIN_DIR' ) );
		$this->assertTrue( defined( 'PLUGIN_FUNCTION_PREFIX_PLUGIN_URL' ) );
		$this->assertTrue( defined( 'PLUGIN_FUNCTION_PREFIX_PLUGIN_FILE' ) );
	}
}
