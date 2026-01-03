# Setup Scripts

## Quick Start

To create a new plugin from this template:

1. Clone or download this repository
2. Run the setup script with your plugin name:

```bash
./bin/setup.sh "My Awesome Plugin" "A plugin that does awesome things." "John Doe"
```

This will replace all placeholders throughout the project:

| Placeholder | Replaced With | Example |
|-------------|---------------|---------|
| `PLUGIN_NAME` | Your plugin name | My Awesome Plugin |
| `PLUGIN_SLUG` | URL/directory safe slug | my-awesome-plugin |
| `PLUGIN_FUNCTION_PREFIX` | Function prefix | my_awesome_plugin |
| `PLUGIN_CLASS_PREFIX` | Class prefix | My_Awesome_Plugin |
| `PLUGIN_DESCRIPTION` | Your description | A plugin that does... |
| `PLUGIN_AUTHOR` | Author name | John Doe |
| `PLUGIN_AUTHOR_USERNAME` | WordPress.org username | johndoe |
| `PLUGIN_VENDOR` | Composer vendor namespace | johndoe |
| `PLUGIN_DONATE_LINK` | Donation URL | https://example.com/donate |

Files named `PLUGIN_SLUG.php` will be renamed to match your slug.

After running the setup script, delete it:

```bash
rm bin/setup.sh
```

## Scripts

### setup.sh

Initializes the plugin template by replacing placeholders with your values.

### install-wp-tests.sh

Installs the WordPress test suite for PHPUnit testing.

```bash
bin/install-wp-tests.sh <db-name> <db-user> <db-pass> [db-host] [wp-version]
```

Example:
```bash
bin/install-wp-tests.sh wordpress_test root '' localhost latest
```
