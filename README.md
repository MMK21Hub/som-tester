# SoM tester

Secure-ish testing environment for CLI tools using Docker.

```bash
docker build -t som-tester .
docker run --hostname=testy --volume ./home:/home/tester -it som-tester
```
