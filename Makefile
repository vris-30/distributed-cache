build:
	go build -o bin/distributed-cache

run: build
	./bin/distributed-cache

runfollower: build
	./bin/distributed-cache --listenaddr :4000 --leaderaddr :3000

test: 
	@go test -v ./...