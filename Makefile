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

deploy: build ## 🚀 DEPLOY TO PRODUCTION (requires confirmation)
	@echo "--> MOCK: Deploying version $(VERSION) to $(type)..."
	@sleep 2
	@echo "--> MOCK: $(type) deployment successful!"