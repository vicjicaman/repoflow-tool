# Repoflow tool

Repoflow is a tool to help you work with microservices and multiple repositories with special focus on Kubernetes.

Some of the features to help your team be more productive are:
 - Generate a namespace per feature
 - Group and target the changes from different features into a namespace
 - Hot link/unlink any package and containers to any namespace.
 - Monitor logs and alarms only for the checkout kubernetes entities.
 - Dashboard and alerts for all the GIT repositories involved during the development of a feature.
 - Automatic herarchycal run/build/watch for librieries, app, containers and kubernetes entities.
 - Visualize and control multiple repositories for checkout services/container/packages.
 - Simplify your development process with feature iterations.
 - Versioned configuration for all your kubernetes entities.
 - Automatic cluster diagrams with code and repositories relations for realms

This tool will help you to have a scalable code base, you can follow the build process of our blog as a real example on how to evolve and grow a microservices system with help of the repoflow tool.

You can find an opensource example of a complete microservices system on Kubernetes *live in production* in our blog [blog.repoflow.com](https://blog.repoflow.com), with this real example you can lean about all the interation of the different entities of a Kubernetes system. 


# Install and start 

- You need a GIT repository with SSH access, the tool will create an issues folder inside.

There are two ways to start the tracker, 
- Installing the node packages and running local services.
   - Download the [repoflow-tool](https://github.com/vicjicaman/repoflow-tool/releases/latest) latest release.
  - Modify the start.sh hostnames and ports to your convenience.
  
  - Install the packages: 
  ```
  sh ./install.sh
  ```
  - Start the services
  ```
  sh ./start.sh
  ```
  
# Plugins

  Once you have the tool up and running you can add any plugin, this is a list of the plugins that we use, you can modify them or use them as well.
  - https://github.com/vicjicaman/repoflow-plugin-npm
  - https://github.com/vicjicaman/repoflow-plugin-container
  - https://github.com/vicjicaman/repoflow-plugin-config
  - https://github.com/vicjicaman/repoflow-plugin-realm
  
  (Only those plugins are needed for the development of the Repoflow tool itself and the blog on Kubernetes)
  
# Limitations

- Only works with ssh protocol
- Tested only in ubuntu or within docker-compose

# License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
