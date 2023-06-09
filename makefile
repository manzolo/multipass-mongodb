include env

START="./start.sh"
STOP="./stop.sh"
SETUP="./setup.sh"
UNINSTALL="./uninstall.sh"
TEST="./test.sh"

.DEFAULT_GOAL = help
.PHONY        = help setup uninstall start stop shell test

help:
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

## ——————————————————————————————————————————————————————————————————
setup: ## setup
	@$(SETUP)
uninstall: ## uninstall
	@$(UNISTALL)
start: ## start
	@$(START)
stop: ## stop
	@$(STOP)
test: ## test
	@$(TEST)
shell: ## shell
	multipass shell ${VM_NAME}
## ——————————————————————————————————————————————————————————————————
