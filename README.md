# Deployment Pipeline Project

## Live Application
**Live URL:** https://docker-hw-project.onrender.com

## CI/CD Pipeline
This repository uses GitHub Actions to automatically deploy to Render on every push to the main branch.

### Features:
- Automatic deployment on push to main branch
- GitHub Actions workflow
- Render cloud hosting
- Zero-downtime deployments

### Workflow:
1. Push code to `main` branch
2. GitHub Actions triggers deployment to Render
3. Render automatically builds and deploys
4. Application updates within 2-3 minutes

### Setup Requirements:
- Render API Key in GitHub Secrets as `RENDER_API_KEY`
- Render Service ID in GitHub Secrets as `RENDER_SERVICE_ID`

## Repository Structure
- `.github/workflows/deploy-to-render.yml` - Render deployment pipeline
- `.github/workflows/deploy.yml` - Docker Hub build pipeline
- `Dockerfile` - Container configuration

## Manual Deployment
Deploy manually: https://dashboard.render.com/web/srv-d52118ali9vc73e0tui0
