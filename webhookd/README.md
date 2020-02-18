## Command Line Use

### Docker

webhookd
1. ` $ docker build -t shapbird-hook -f ./webhookd/Dockerfile . `
	* Execute from parent directory (` .../shapbird `)
	
2. ` $ docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock --rm --name=shapbird-hook shapbird-hook `
	* Readies server for requets at port :9000
	* Example deploy request ` $ curl http://localhost:9000/deploy `



## Documentation

### Built With

* [Docker](https://www.docker.com/) - Used to build and run
* [webhookd](https://github.com/ncarlier/webhookd) - Used to wait for HTTP request to run deployment
