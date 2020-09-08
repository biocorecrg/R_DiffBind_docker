# R_DiffBind_docker
Docker recipe for building R with DiffBind

    docker build -t diffbind .

    sudo singularity build diffbind.sif docker-daemon://diffbind:latest

    singularity exec -e diffbind.sif R ...
