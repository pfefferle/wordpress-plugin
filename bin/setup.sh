#!/bin/bash

# WordPress Plugin Template Setup Script
# Similar to _s theme's setup process
#
# Usage: ./bin/setup.sh "My Plugin Name" ["Description"] ["Author Name"] ["Author Username"] ["Donate Link"]
#
# This script will:
# 1. Replace PLUGIN_NAME with your plugin name
# 2. Replace PLUGIN_SLUG with a slug version (lowercase, hyphens)
# 3. Replace PLUGIN_FUNCTION_PREFIX with a function prefix (lowercase, underscores)
# 4. Replace PLUGIN_CLASS_PREFIX with a class prefix (Title_Case)
# 5. Replace PLUGIN_DESCRIPTION with your description
# 6. Replace PLUGIN_AUTHOR with your name
# 7. Replace PLUGIN_AUTHOR_USERNAME with WordPress.org username
# 8. Replace PLUGIN_VENDOR with vendor namespace (for composer)
# 9. Replace PLUGIN_DONATE_LINK with donation URL
# 10. Rename files containing PLUGIN_SLUG

set -e

if [ $# -lt 1 ]; then
	echo "Usage: $0 \"Plugin Name\" [\"Description\"] [\"Author Name\"] [\"Username\"] [\"Donate Link\"]"
	echo ""
	echo "Example: $0 \"My Awesome Plugin\" \"A plugin that does awesome things.\" \"John Doe\" \"johndoe\" \"https://example.com/donate\""
	exit 1
fi

PLUGIN_NAME="$1"
PLUGIN_DESCRIPTION="${2:-A WordPress plugin.}"
PLUGIN_AUTHOR="${3:-Your Name}"
PLUGIN_AUTHOR_USERNAME="${4:-yourname}"
PLUGIN_DONATE_LINK="${5:-https://example.com/donate/}"

# Generate slug from name (lowercase, spaces to hyphens, remove special chars)
PLUGIN_SLUG=$(echo "$PLUGIN_NAME" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/[^a-z0-9-]//g')

# Generate function prefix (lowercase, hyphens to underscores)
PLUGIN_FUNCTION_PREFIX=$(echo "$PLUGIN_SLUG" | sed 's/-/_/g')

# Generate class prefix (Title_Case with underscores)
PLUGIN_CLASS_PREFIX=$(echo "$PLUGIN_NAME" | sed 's/ /_/g' | sed 's/[^a-zA-Z0-9_]//g')

# Generate vendor from username (lowercase, remove special chars)
PLUGIN_VENDOR=$(echo "$PLUGIN_AUTHOR_USERNAME" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]//g')

echo "Setting up plugin with:"
echo "  Name:            $PLUGIN_NAME"
echo "  Slug:            $PLUGIN_SLUG"
echo "  Function prefix: ${PLUGIN_FUNCTION_PREFIX}_"
echo "  Class prefix:    $PLUGIN_CLASS_PREFIX"
echo "  Description:     $PLUGIN_DESCRIPTION"
echo "  Author:          $PLUGIN_AUTHOR"
echo "  Username:        $PLUGIN_AUTHOR_USERNAME"
echo "  Vendor:          $PLUGIN_VENDOR"
echo "  Donate link:     $PLUGIN_DONATE_LINK"
echo ""

# Detect sed flavor (macOS vs GNU)
if [[ $(uname -s) == 'Darwin' ]]; then
	SED_INPLACE=(-i '')
else
	SED_INPLACE=(-i)
fi

# Find all files (excluding .git, node_modules, vendor)
FILES=$(find . -type f \
	-not -path './.git/*' \
	-not -path './node_modules/*' \
	-not -path './vendor/*' \
	-not -name 'setup.sh' \
	-not -name '*.png' \
	-not -name '*.jpg' \
	-not -name '*.jpeg' \
	-not -name '*.gif' \
	-not -name '*.ico')

echo "Replacing placeholders in files..."

for file in $FILES; do
	if [ -f "$file" ]; then
		# Replace all placeholders (order matters - longer patterns first)
		sed "${SED_INPLACE[@]}" "s|PLUGIN_DONATE_LINK|$PLUGIN_DONATE_LINK|g" "$file" 2>/dev/null || true
		sed "${SED_INPLACE[@]}" "s/PLUGIN_AUTHOR_USERNAME/$PLUGIN_AUTHOR_USERNAME/g" "$file" 2>/dev/null || true
		sed "${SED_INPLACE[@]}" "s/PLUGIN_FUNCTION_PREFIX/${PLUGIN_FUNCTION_PREFIX}/g" "$file" 2>/dev/null || true
		sed "${SED_INPLACE[@]}" "s/PLUGIN_CLASS_PREFIX/${PLUGIN_CLASS_PREFIX}/g" "$file" 2>/dev/null || true
		sed "${SED_INPLACE[@]}" "s/PLUGIN_DESCRIPTION/$PLUGIN_DESCRIPTION/g" "$file" 2>/dev/null || true
		sed "${SED_INPLACE[@]}" "s/PLUGIN_AUTHOR/$PLUGIN_AUTHOR/g" "$file" 2>/dev/null || true
		sed "${SED_INPLACE[@]}" "s/PLUGIN_VENDOR/$PLUGIN_VENDOR/g" "$file" 2>/dev/null || true
		sed "${SED_INPLACE[@]}" "s/PLUGIN_NAME/$PLUGIN_NAME/g" "$file" 2>/dev/null || true
		sed "${SED_INPLACE[@]}" "s/PLUGIN_SLUG/$PLUGIN_SLUG/g" "$file" 2>/dev/null || true
	fi
done

echo "Renaming files..."

# Rename files containing PLUGIN_SLUG in their name
find . -type f -name '*PLUGIN_SLUG*' \
	-not -path './.git/*' \
	-not -path './node_modules/*' \
	-not -path './vendor/*' | while read file; do
	newfile=$(echo "$file" | sed "s/PLUGIN_SLUG/$PLUGIN_SLUG/g")
	if [ "$file" != "$newfile" ]; then
		mv "$file" "$newfile"
		echo "  Renamed: $file -> $newfile"
	fi
done

# Rename directories containing PLUGIN_SLUG in their name
find . -type d -name '*PLUGIN_SLUG*' \
	-not -path './.git/*' \
	-not -path './node_modules/*' \
	-not -path './vendor/*' | sort -r | while read dir; do
	newdir=$(echo "$dir" | sed "s/PLUGIN_SLUG/$PLUGIN_SLUG/g")
	if [ "$dir" != "$newdir" ]; then
		mv "$dir" "$newdir"
		echo "  Renamed: $dir -> $newdir"
	fi
done

echo ""
echo "Done! Your plugin '$PLUGIN_NAME' is ready."
echo ""
echo "Next steps:"
echo "  1. Run 'composer install' to install PHP dependencies"
echo "  2. Run 'npm install' to install npm dependencies"
echo "  3. Run 'npm run env:start' to start the development environment"
echo "  4. Delete this setup script: rm bin/setup.sh"
echo "  5. Delete the bin/readme.md: rm bin/readme.md"
