generate:
	@protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative proto/service.proto

run_server:
	@echo "---- Running Server ----"
	@go run server/main.go

run_client:
	@echo "---- Running Client ----"
	@go run client/*.go
