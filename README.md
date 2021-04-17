# lemp-monitor-dockerizing
This project uses stored values in .env. In order to build images from Dockerfiles, simply comment current values and uncomment values beneath them.

For running playbook first make sure community general collection is installed by:
    ansible-galaxy collection install community.general
Then run the playbook using:
    ansible-playbook -i data/hosts docker-playbook.yml
