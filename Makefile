.PHONY: test
test:
	./flutterize test/compatible_project/pubspec.yaml
	./flutterize test/incompatible_project/pubspec.yaml; [ $$? -ne 0 ]

.PHONY: help
help: ## Show this help text
	$(info usage: make [target])
	$(info )
	$(info Available targets:)
	@awk -F ':.*?## *' '/^[^\t].+?:.*?##/ \
         {printf "  %-24s %s\n", $$1, $$2}' $(MAKEFILE_LIST)
