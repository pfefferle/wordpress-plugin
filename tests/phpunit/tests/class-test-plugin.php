<?php
/**
 * Sample test class.
 *
 * @package PLUGIN_CLASS_PREFIX
 */

/**
 * Sample test case.
 */
class Test_Plugin extends WP_UnitTestCase {

	/**
	 * Test that the plugin is loaded.
	 */
	public function test_plugin_loaded() {
		$this->assertTrue(
			function_exists( 'PLUGIN_FUNCTION_PREFIX_init' ),
			'Plugin init function should exist'
		);
	}

	/**
	 * Sample test.
	 */
	public function test_sample() {
		$this->assertTrue( true );
	}
}
