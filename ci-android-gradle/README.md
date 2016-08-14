# android-ci-docker

## intro

an Android CI(Continuous Integration) docker that include :
* Android SDK(build-tools, api23, api19, api17)
* OpenJDK-7
* Maven 3
* Gradle
* Git (for checkout source)
* SSH Server (for jenkins slave)

## useage

### pull image

```shell
sudo docker pull season/android-ci-docker
```

### run image whit params

```shell
# --hostname : some buildtools will append hostname to build informations
# -p 10022:22 mapping SSH port for Jenkins and other CI server useage
sudo docker run -d --hostname android-build-node-1 --name android-build-node-1 -p 10022:22 season/android-ci-docker sleep 99999D
```
