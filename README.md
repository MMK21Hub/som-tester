# SoM tester

Secure-ish testing environment for CLI tools using Docker.

```bash
docker build -t som-tester .
docker run --cap-drop=ALL --hostname=testy -it som-tester
```
