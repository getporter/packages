
default: test

.PHONY: test
test:
	$(info validating mixins list is well-formed JSON)
	@cat mixins/index.json | jq -r '.' > /dev/null
	$(info validating plugins list is well-formed JSON)
	@cat plugins/index.json | jq -r '.' > /dev/null

.PHONY: publish
publish:
ifndef AZURE_STORAGE_CONNECTION_STRING
	$(error AZURE_STORAGE_CONNECTION_STRING must be set in order to publish)
endif
	$(info uploading mixins list)
	@az storage blob upload -c porter -n mixins/index.json -f mixins/index.json
	$(info uploading plugins list)
	@az storage blob upload -c porter -n plugins/index.json -f plugins/index.json
