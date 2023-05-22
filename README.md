## Setting Up Docker, Postgres, And PgAdmin

-Building Docker Image
    - docker build -t test:pandas . 
- Running Docker Image
    - docker run -it test:pandas

- Running Postgres on the command line with Docker 
    - docker run -it -e POSTGRES_USER="root" -e POSTGRES_PASSWORD="root" -e POSTGRES_DB="morodb" -v $(pwd)/database:/var/lib/postgresql/data -p 5432:5432 postgres:13 
- Accessing database via pgcli
    - pgcli -h localhost -p 5432 -u root -d morodb

- Running pgAdmin via docker & a netwok
    - configure a docker to run in a network
        - docker newtork create networkName
    - docker run -it -e POSTGRES_USER="root" -e POSTGRES_PASSWORD="root" -e POSTGRES_DB="morodb" -v $(pwd)/database:/var/lib/postgresql/data -p 5432:5432 --network=pg-network --name pg-database postgres:13 

- Dowloading the latest version of pgadmin from docker
    - docker pull dpage/pgadmin4
- Running Postgres and pgAdmin with Docker-compose