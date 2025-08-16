flutter := $(shell command -v fvm) flutter

.PHONY: test
test:
	cd test/compatible_project && ../../flutterize && $(flutter) pub get
	cd test/incompatible_project && ../../flutterize && $(flutter) pub get; [ $$? -eq 1 ]
	git checkout -- test


.PHONY: help
help: ## Show this help text
	$(info usage: make [target])
	$(info )
	$(info Available targets:)
	@awk -F ':.*?## *' '/^[^\t].+?:.*?##/ \
         {printf "  %-24s %s\n", $$1, $$2}' $(MAKEFILE_LIST)
