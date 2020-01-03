build:
	docker build -t quay.io/suzuki_shunsuke/yamllint:local .
ci-local:
	drone exec --event pull_request --pipeline build
test:
	container-structure-test test --image quay.io/suzuki_shunsuke/yamllint:local --config test.yaml
yamllint:
	yamllint -c .yamllint.yml .drone.yml .yamllint.yml
