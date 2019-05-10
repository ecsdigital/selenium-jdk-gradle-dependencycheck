# selenium-jdk-gradle-dependencycheck

This project contains a dockerfile used to build a Docker image which adds the following on top of [Selenium/node-chrome](https://github.com/SeleniumHQ/docker-selenium/tree/master/NodeChrome) :

* openjdk8
* Gradle 4.9
* An intialised database for [OWASP Dependency Check](https://jeremylong.github.io/DependencyCheck/dependency-check-gradle/index.html)

## Pipeline
There is an Azure DevOps pipeline which builds this image and pushes to DockerHub:

[![Build Status](https://dev.azure.com/ecsdigital/cucumber-container-ci/_apis/build/status/ecsdigital.selenium-jdk-gradle-dependencycheck?branchName=master)](https://dev.azure.com/ecsdigital/cucumber-container-ci/_build/latest?definitionId=5&branchName=master)