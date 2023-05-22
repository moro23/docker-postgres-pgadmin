services:
  postgres:
    image: postgres:13
    environment:
      POSTGRES_USER=root
      POSTGRES_PASSWORD=root
      POSTGRES_DB=morodb
    volumes:
      - postgres-db-volume:/var/lib/postgresql/data
    healthcheck:
        test: ["CMD", "pg_isready", "-U", "fastapi"]
        intervals: 5s
        retries: 5
    restart: always


