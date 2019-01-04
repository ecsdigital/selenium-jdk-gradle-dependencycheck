# selenium-jdk-gradle-dependencycheck

This project contains a dockerfile used to build a Docker image which adds the following on top of [Selenium/node-chrome](https://github.com/SeleniumHQ/docker-selenium/tree/master/NodeChrome) :

* openjdk8
* Gradle 4.9
* An intialised database for [OWASP Dependency Check](https://jeremylong.github.io/DependencyCheck/dependency-check-gradle/index.html)

## Pipeline
There is an Azure DevOps pipeline which builds this image and pushes to DockerHub:

[![Build Status](https://dev.azure.com/TomChapman0353/ECS%20Digital/_apis/build/status/ECS%20Digital-Docker%20container-CI?branchName=master)](https://dev.azure.com/TomChapman0353/ECS%20Digital/_build/latest?definitionId=3?branchName=master)