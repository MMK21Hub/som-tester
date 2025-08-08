# SoM tester

Secure-ish testing environment for CLI tools using Docker.

```bash
# Create home directory, so it's owned by user 1000
mkdir home
```

```bash
docker build -t som-tester .
docker run --hostname=testy --volume ./home:/home/tester -it som-tester
```
