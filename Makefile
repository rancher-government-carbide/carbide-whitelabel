build:
	docker build -t bgulla/copypotomus .

test:
	rm -rf test/*; docker run --rm -v ${PWD}/test:/rancher-images -t bgulla/copypotomus; ls -lath test
