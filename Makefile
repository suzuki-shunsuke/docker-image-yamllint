build:
	docker build -t quay.io/suzuki_shunsuke/yamllint:local .
ci-local:
	drone exec --event pull_request --pipeline build
test:
	container-structure-test test --image quay.io/suzuki_shunsuke/yamllint:local --config test.yml
yamllint:
	find . -name "*.yml" -o -name "*.yaml" -print0 | xargs -0 yamllint -c .yamllint.yml
