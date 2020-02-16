## Command Line Use

### Docker

n8n
1. ` $ docker build -t shapbird-n8n ./n8n `

2. ` $ docker run -d -p 5678:5678 --rm --name=shapbird-n8n shapbird-n8n  `
	* Accessible via ` http://localhost:5678/ `
	* Workflow can be uploaded from file ` workflow.json `



## Documentation

### Built With

* [Docker](https://www.docker.com/) - Used to build and run
* [n8n](https://n8n.io/) - Used to build workflow that triggers deployment by request
