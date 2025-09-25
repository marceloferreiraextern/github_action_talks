.PHONY: help build test deploy-staging deploy-production

help: ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: ## ⚙️ Build the application
	@echo "--> MOCK: Building with version: $(VERSION) and git tag: $(TAG)..."
	@sleep 1
	@echo "--> MOCK: Build complete."

test: ## 🧪 Run the unit tests
	@echo "--> MOCK: Running unit tests..."
	@sleep 1
	@echo "--> MOCK: All tests passed."

deploy-staging: build ## 🚀 Deploy to the STAGING environment
	@echo "--> MOCK: Deploying version $(VERSION) to STAGING..."
	@sleep 2
	@echo "--> MOCK: Staging deployment successful!"

deploy-production: build ## 🚀 DEPLOY TO PRODUCTION (requires confirmation)
	@read -p "Are you sure you want to deploy version $(VERSION) to PRODUCTION? [y/N] " confirm && [[ $$confirm == [yY] ]] || exit 1
	@echo "--> MOCK: Deploying version $(VERSION) to PRODUCTION..."
	@sleep 2
	@echo "--> MOCK: Production deployment successful!"