# GitHub Configuration

## Workflows

The following workflows run automatically:

| Workflow | Trigger | Description |
|----------|---------|-------------|
| `phpcs.yml` | Push/PR | Checks coding standards |
| `phpunit.yml` | Push/PR | Runs unit tests on PHP 7.4, 8.2, 8.3 |
| `extract-wp-hooks.yml` | Push to trunk | Extracts actions/filters to wiki |
| `deploy.yml` | Tag | Deploys to WordPress.org |
| `update-assets.yml` | Push to trunk | Updates readme/assets on WordPress.org |

## Secrets Required

For WordPress.org deployment, add these secrets to your repository:

- `SVN_USERNAME` - Your WordPress.org username
- `SVN_PASSWORD` - Your WordPress.org password

## Dependabot

Dependabot is configured to check for updates weekly:

- Composer dependencies
- npm dependencies
- GitHub Actions

## Creating a Release

1. Update the version number in the main plugin file and README.md
2. Update the changelog in README.md
3. Commit the changes
4. Create and push a new tag:

```bash
git tag 1.0.0
git push origin 1.0.0
```

The GitHub Action will automatically deploy to WordPress.org.

## Configuration Files

| File | Purpose |
|------|---------|
| `dependabot.yml` | Automated dependency updates |
| `workflows/deploy.yml` | WordPress.org deployment |
| `workflows/update-assets.yml` | Asset/readme sync to WordPress.org |
| `workflows/phpcs.yml` | Coding standards check |
| `workflows/phpunit.yml` | Unit tests |
| `workflows/extract-wp-hooks.yml` | Extract hooks to wiki |
