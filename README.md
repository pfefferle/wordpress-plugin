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

### Local Development Environment

This plugin uses [@wordpress/env](https://developer.wordpress.org/block-editor/reference-guides/packages/packages-env/) for local development.

```bash
# Install dependencies
npm install

# Start the development environment
npm run env:start

# Stop the development environment
npm run env:stop

# Destroy the development environment (removes all data)
npm run env:destroy
```

The development site will be available at `http://localhost:8888` (admin: `admin`/`password`).

### Configuration Files

#### `.wp-env.json`

Configures the WordPress development environment:
- `port`: The port for the development site (default: 8888)
- `testsPort`: The port for the test site (default: 8889)
- `plugins`: Plugins to install (`.` means the current directory)
- `config`: WordPress configuration options (WP_DEBUG, etc.)
- `mappings`: Maps the plugin directory for proper activation

#### `package.json`

Contains npm scripts and dependencies:
- `@wordpress/env`: The WordPress development environment package
- Scripts: `env:start`, `env:stop`, `env:destroy`

#### `.distignore`

Lists files/directories excluded from the WordPress.org plugin distribution (SVN). These files are needed for development but not for production.

#### `.gitattributes`

Lists files/directories excluded from git archives (`git archive`, GitHub releases). Uses `export-ignore` attribute.

#### `.github/workflows/deploy.yml`

Automatically deploys the plugin to WordPress.org when a new tag is pushed. Requires `SVN_USERNAME` and `SVN_PASSWORD` secrets.

Key settings:
- `SLUG`: The plugin slug on WordPress.org
- `README_NAME`: Set to `README.md` (instead of default `readme.txt`)

#### `.github/workflows/update-assets.yml`

Automatically updates plugin assets (screenshots, banners, icons) and readme on WordPress.org when pushing to trunk. Uses the same secrets as deploy.yml.

### Testing

```bash
# Run PHP CodeSniffer
./vendor/bin/phpcs

# Run PHPUnit tests
./vendor/bin/phpunit
```

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
