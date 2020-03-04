# Android Builder Container Image

[Github action](https://help.github.com/en/actions) and [Dockerfile](https://docs.docker.com/engine/reference/builder/) 
which can be used to build Android projects using android-29 and/or ndk;21.0.6113669 .


Github Action Example `.github/workflows/android.yml` :

```yaml
name: Android CI

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Git Checkout
        uses: actions/checkout@v2
      - name: Build with Gradle
        uses: manimaul/android-builder-action@v1
        with:
          entrypoint: /github/workspace/gradlew
          args: --no-daemon build
```

Build your Android project with just the android-sdk Docker container:
```bash
cd /path/to/your/android/project
docker run -v $(pwd):/build \
            -w /build \
            --entrypoint /build/gradlew \
            docker.pkg.github.com/manimaul/android-builder-action/android-sdk:latest \
            --no-daemon build
```
