all:
	swagger-codegen generate -l ruby -i "https://marketplace.zoom.us/docs/api-reference/zoom-api/Zoom%20API.oas2.json" -c config.json
