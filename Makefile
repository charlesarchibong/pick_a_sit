.PHONY: all run_dev_web run_dev_mobile run_unit clean upgrade lint format build_dev_mobile help 

all: lint format run_dev_mobile


run_unit: ## Runs unit tests
	@echo "╠ Running the tests"
	@flutter test || (echo "Error while running tests"; exit 1)

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean

get: ## get dependencies from pub.dev
	@echo "╠ Get dependencies from pub.dev..."
	@flutter pub get

format: ## Formats the code
	@echo "╠ Formatting the code"
	@dart format .

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

upgrade: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub upgrade


run_dev_web: ## Runs the web application in development
	@echo "╠ Running the app"
	@flutter run -d chrome --dart-define=ENVIRONMENT=dev

run: ## Runs the mobile application in development
	@echo "╠ Running the app"
	@flutter run 

build: clean ## Build apk for development flavor
	@echo "╠  Building the app"
	@flutter build apk

build_runner: ## Build appble for production flavor and uploading to store
	@echo "╠  Running build to generate files"
	@flutter pub run build_runner watch --delete-conflicting-outputs