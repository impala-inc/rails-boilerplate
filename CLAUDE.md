# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Rails boilerplate template that generates new Rails applications inside Docker containers. It's designed for rapid setup of Rails projects with modern development tooling.

## Development Commands

### Container-based Development

```bash
# Start development environment (from VS Code Dev Container)
./bin/dev

# The startup script automatically:
# - Generates a new Rails app if none exists
# - Installs dependencies with bundle install
# - Runs ./bin/setup and ./bin/dev
```

### Running Services

```bash
# Rails server (configured in Procfile.dev)
bin/rails server -p 3000 -b 0.0.0.0

# Tailwind CSS watch mode
bin/rails tailwindcss:watch
```

## Architecture

### Template Structure

- **Dynamic Application Generation**: Creates Rails apps on container startup via `docker/app/startup.sh`
- **Flexible Modes**: Supports API-only or full-stack Rails applications via `RAILS_MODE` environment variable
- **Container-First**: Designed for VS Code Dev Containers with Docker Compose

### Generated Rails Configuration

- **Database**: PostgreSQL (configured in docker-compose.yml)
- **CSS Framework**: Tailwind CSS
- **Skipped Components**: Git, Jbuilder, ActionMailer, tests, ActiveStorage, ActionText

### Development Container Modes

- **API Mode**: `.devcontainer/devcontainer.json` (`RAILS_MODE=api`)
- **Fullstack Mode**: `.devcontainer/devcontainer.fullstack.json` (`RAILS_MODE=fullstack`)

## Git Workflow

Based on `docs/git_rules.md`:

- **Branch Naming**: `{user}/feature/`, `{user}/fix/`, `{user}/release/`
- **Main Branches**: `production`, `main`, `{user}/develop`, `staging`
- **Commit Style**: Conventional commits with bilingual (Japanese/English) support

## Development Environment

### Required VS Code Extensions

- Ruby LSP (shopify.ruby-lsp)
- Rails DB Schema (aki77.rails-db-schema)
- GitHub Copilot
- EndWise (kaiwood.endwise)

### Database

- PostgreSQL runs in separate container
- Connection configured via docker-compose.yml
- Persistent volume storage

## Important Notes

- This is a **template repository** - the actual Rails application is generated at runtime
- No Gemfile exists initially - created during startup process
- Primary documentation is in Japanese
- Automated dependency updates via Dependabot (weekly, Mondays 9 AM JST)
