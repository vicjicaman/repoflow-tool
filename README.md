# Repoflow tool

Repoflow is a tool adn workflow to help you work with microservices and multiple repositories with Kubernetes.

## Features

Some of the features to help your team be more productive are:

 - <a href="https://user-images.githubusercontent.com/36018976/71381519-198a2600-25d4-11ea-8b98-b4a5ece2fed3.gif" target="_blank">Generate a namespace per feature or group and target the changes from different features into a namespace.</a>
 - <a href="https://user-images.githubusercontent.com/36018976/71381497-08411980-25d4-11ea-827c-2861446fd7fe.gif" target="_blank">Hot link/unlink any package and containers to any namespace.</a>
 - <a href="https://user-images.githubusercontent.com/36018976/71381504-0d05cd80-25d4-11ea-8519-03ba654fbf98.gif" target="_blank">Monitor logs and alarms only for the checkout kubernetes entities.</a>_<a href="https://user-images.githubusercontent.com/36018976/71381513-11ca8180-25d4-11ea-8bba-9b497a429d90.gif" target="_blank">(2).</a>
 - <a href="https://user-images.githubusercontent.com/36018976/71381490-0414fc00-25d4-11ea-8e24-56ad2cc1dde6.gif" target="_blank">Dashboard and alerts for all the GIT repositories involved during the development of a feature.</a>
 - <a href="https://user-images.githubusercontent.com/36018976/71381526-1f800700-25d4-11ea-99c7-83ff302e2bc7.gif" target="_blank">Automatic hierarchical run/build/watch for app, containers and kubernetes entities.</a>
 - <a href="https://user-images.githubusercontent.com/36018976/71381490-0414fc00-25d4-11ea-8e24-56ad2cc1dde6.gif" target="_blank">Visualize and control multiple repositories for checkout services/container/packages.</a>
 - <a href="https://user-images.githubusercontent.com/36018976/71381526-1f800700-25d4-11ea-99c7-83ff302e2bc7.gif" target="_blank">Versioned configuration for all your kubernetes entities.</a>
 - Simplify your development process with feature iterations.
 - Automatic cluster diagrams with code and repositories relations for realms (WIP)
 
 <p align="center">
  <img src="https://user-images.githubusercontent.com/36018976/71377469-2fdcb580-25c5-11ea-9497-a9866af0ac95.gif">
</p>

This tool will help you to have a scalable code base, you can follow the build process of our blog as a real example on how to evolve and grow a microservices system with help of the repoflow tool.

You can find an opensource example of a complete microservices system on Kubernetes *live in production* in our blog [blog.repoflow.com](https://blog.repoflow.com), with this real example you can lean about all the interation of the different entities of a Kubernetes system. 


## Getting started

 - Download the latest linker-tool release and run the start.sh script
```bash
curl -fsSL https://github.com/vicjicaman/repoflow-tool/archive/v1.70.7-master.tar.gz | tar -xzv
./start.sh
```
## Plugins

  Once you have the tool up and running you can add any plugin, this is a list of the plugins that we use, you can modify them or use them as well.
  
  - https://github.com/vicjicaman/repoflow-plugin-npm
  - https://github.com/vicjicaman/repoflow-plugin-container
  - https://github.com/vicjicaman/repoflow-plugin-config
  - https://github.com/vicjicaman/repoflow-plugin-realm
  - https://github.com/vicjicaman/repoflow-plugin-folder
  
  (Only those plugins are needed for the development of the Repoflow tool itself, the linker (Kubernetes and local client) and the blog on Kubernetes)
  
## Limitations

- Only works with ssh protocol
- Tested only in ubuntu or within docker-compose


Checkout our other tools and resources focused on increase the developers productivity working with multiple services and kubernetes.
- **linker-tool:** [repository](https://github.com/vicjicaman/linker-tool) A team focused tool to connect to Kubernetes service, ingress and nodes ports and replace services with local ports.
- **microservices:** [repository](https://github.com/vicjicaman/microservices) A blog about it's own development and evolution running on kubernetes.
  
## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
