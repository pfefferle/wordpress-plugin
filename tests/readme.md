# Tests

## Prerequisites

- PHP 7.4+
- Composer
- MySQL/MariaDB (for PHPUnit)

## Setup

```bash
# Install PHP dependencies
composer install

# Install WordPress test suite (first time only)
bin/install-wp-tests.sh wordpress_test root '' localhost latest
```

## Running Tests

```bash
# Run tests
composer test

# Or with wp-env
composer test:wp-env
```

## Code Quality

### PHP_CodeSniffer

```bash
# Check for coding standard violations
composer lint

# Automatically fix violations where possible
composer lint:fix
```

The `phpcs.xml` file configures:
- PHP compatibility checking (PHP 7.4+)
- WordPress coding standards
- Minimum WordPress version (6.0)
- Text domain validation

## Directory Structure

```
tests/
└── phpunit/
    ├── bootstrap.php      # Test bootstrap
    ├── includes/          # Test helper classes
    └── tests/             # Test files (class-test-*.php)
```

## Writing Tests

Create test files in `tests/phpunit/tests/` with the `class-test-` prefix:

```php
<?php
class Test_Example extends WP_UnitTestCase {
    public function test_something() {
        $this->assertTrue( true );
    }
}
```
