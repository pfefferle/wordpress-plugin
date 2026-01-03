# PLUGIN_NAME

PLUGIN_DESCRIPTION

- Contributors: pfefferle
- Donate link: https://notiz.blog/donate/
- Tags: tag1, tag2, tag3
- Requires at least: 6.0
- Tested up to: 6.7
- Requires PHP: 7.4
- Stable tag: 1.0.0
- License: GPL-2.0-or-later
- License URI: https://www.gnu.org/licenses/gpl-2.0.html

Short description of the plugin (max 150 characters).

## Description

Full description of the plugin. Explain what the plugin does, why it's useful, and any key features.

## Installation

1. Upload the `PLUGIN_SLUG` folder to the `/wp-content/plugins/` directory
2. Activate the plugin through the 'Plugins' menu in WordPress
3. Configure the plugin settings as needed

## Frequently Asked Questions

### Question 1?

Answer to question 1.

### Question 2?

Answer to question 2.

## Changelog

### 1.0.0

* Initial release

## Upgrade Notice

### 1.0.0

Initial release.

---

## Development

### Quick Start

To create a new plugin from this template:

1. Clone or download this repository
2. Run the setup script with your plugin name:

```bash
./bin/setup.sh "My Awesome Plugin" "A plugin that does awesome things."
```

This will replace all placeholders throughout the project:

| Placeholder | Replaced With | Example |
|-------------|---------------|---------|
| `PLUGIN_NAME` | Your plugin name | My Awesome Plugin |
| `PLUGIN_SLUG` | URL/directory safe slug | my-awesome-plugin |
| `PLUGIN_FUNCTION_PREFIX` | Function prefix | my_awesome_plugin |
| `PLUGIN_CLASS_PREFIX` | Class prefix | My_Awesome_Plugin |
| `PLUGIN_DESCRIPTION` | Your description | A plugin that does... |

Files named `PLUGIN_SLUG.php` will be renamed to match your slug.

After running the setup script, delete it:

```bash
rm bin/setup.sh
```

### Prerequisites

- [Composer](https://getcomposer.org/) for PHP dependencies
- [Node.js](https://nodejs.org/) and npm for wp-env

### Setup

```bash
# Install PHP dependencies
composer install

# Install npm dependencies
npm install
```

### Local Development Environment

This plugin uses [@wordpress/env](https://developer.wordpress.org/block-editor/reference-guides/packages/packages-env/) for local development.

```bash
# Start the development environment
npm run env:start

# Stop the development environment
npm run env:stop

# Destroy the development environment (removes all data)
npm run env:destroy
```

The development site will be available at `http://localhost:8888` (admin: `admin`/`password`).

### Code Quality

#### PHP_CodeSniffer

Lint your code to check for WordPress coding standards:

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

### Testing

#### PHPUnit

Run unit tests:

```bash
# Install WordPress test suite (first time only)
bin/install-wp-tests.sh wordpress_test root '' localhost latest

# Run tests
composer test

# Or with wp-env
composer test:wp-env
```

Test files:
- `phpunit.xml.dist` - PHPUnit configuration
- `tests/bootstrap.php` - Test bootstrap file
- `tests/class-test-*.php` - Test files

### Configuration Files

| File | Purpose |
|------|---------|
| `.wp-env.json` | wp-env configuration (ports, plugins, debug settings) |
| `package.json` | npm scripts for wp-env |
| `composer.json` | PHP dependencies and composer scripts |
| `phpcs.xml` | PHP_CodeSniffer configuration |
| `phpunit.xml.dist` | PHPUnit configuration |
| `.distignore` | Files excluded from WordPress.org distribution |
| `.gitattributes` | Files excluded from git archives |

### GitHub Actions

The following workflows run automatically:

| Workflow | Trigger | Description |
|----------|---------|-------------|
| `phpcs.yml` | Push/PR | Checks coding standards |
| `phpunit.yml` | Push/PR | Runs unit tests on PHP 7.4, 8.2, 8.3 |
| `deploy.yml` | Tag | Deploys to WordPress.org |
| `update-assets.yml` | Push to trunk | Updates readme/assets on WordPress.org |

### Creating a Release

1. Update the version number in the main plugin file and README.md
2. Update the changelog in README.md
3. Commit the changes
4. Create and push a new tag:

```bash
git tag 1.0.0
git push origin 1.0.0
```

The GitHub Action will automatically deploy to WordPress.org.
