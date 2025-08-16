.PHONY: test
test: ## Run tests
test:
	./check-flutter-compat test/compatible_project/pubspec.yaml
	./check-flutter-compat test/incompatible_project/pubspec.yaml; [ $$? -ne 0 ]
	./check-flutter-compat \
		test/compatible_project/pubspec.yaml \
		test/incompatible_project/pubspec.yaml; [ $$? -ne 0 ]

.PHONY: help
help: ## Show this help text
	$(info usage: make [target])
	$(info )
	$(info Available targets:)
	@awk -F ':.*?## *' '/^[^\t].+?:.*?##/ \
         {printf "  %-24s %s\n", $$1, $$2}' $(MAKEFILE_LIST)
