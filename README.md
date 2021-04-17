# lemp-monitor-dockerizing

## Run docker services
This project uses stored values in .env. In order to build images from Dockerfiles, simply comment current values and use values beneath them. Also in docker-compose.yml file, change "image" directive to "build".
```bash
docker-compose up -d
```

## Run playbook
For running playbook first make sure community general collection and docker is installed by:
```bash
	1. ansible-galaxy collection install community.general
	2. ansible-galaxy collection install community.docker
```

Then add your hosts to data/hosts and run the playbook using:
```bash
	ansible-playbook -i data/hosts docker-playbook.yml
```
