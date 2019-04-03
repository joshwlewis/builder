.PHONY: build test grab-run-image

build:
	pack create-builder -b builder.toml projectriff/builder

test: grab-run-image
	cd integration-tests && GO111MODULE=on go run main.go

grab-run-image:
	docker pull packs/run:0.1.0

