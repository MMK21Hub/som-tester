# SoM tester

Secure-ish testing environment for CLI tools using Docker.

```bash
docker build -t cli-sandbox .
docker run --cap-drop=ALL -it cli-sandbox
```
