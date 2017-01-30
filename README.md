#Docker Orchestration
This is the code repository for [Docker Orchestration](https://www.packtpub.com/virtualization-and-cloud/docker-orchestration?utm_source=github&utm_medium=repository&utm_campaign=9781787122123), published by [Packt](https://www.packtpub.com/?utm_source=github). It contains all the supporting project files necessary to work through the book from start to finish.

## About the Book
Docker orchestration is what you need when transitioning from deploying containers individually on a single host to deploying complex multi-container apps on many machines.

This book covers the new orchestration features of Docker 1.12 and helps you efficiently build, test, and deploy your application using Docker. You will be shown how to build multi-container applications using Docker Compose. You will also be introduced to the building blocks for multi-host Docker clusters such as registry, overlay networks, and shared storage using practical examples.

This book gives an overview of core tools such as Docker Machine, Swarm, and Compose which will enhance your orchestration skills. You’ll learn how to set up a swarm using the decentralized building block. Next, you’ll be shown how to make the most out of the in-built orchestration feature of Docker engine and you’ll use third-party tools such as Kubernetes, Mesosphere, and CoreOS to orchestrate your existing process. Finally, you will learn to deploy cluster hosts on cloud services and automate your infrastructure.

##Instructions and Navigations
All of the code is organized into folders. Each folder starts with a number followed by the application name. For example, Chapter02.



The code will look like the following:
```
#cloud-config 
users: 
  - name: "demo" 
    passwd: "$6$HpqJOCs8XahT$mSgRYAn..." 
    groups: 
    - "sudo" 
    - "docker"
```

You will need a place to run Docker hosts. This can be in a local cluster such as OpenStack or a cloud hosting provider such as Amazon EC2, Google Compute Engine, or Microsoft Azure. The first chapter shows you how to install Docker on Linux and the rest of the book assumes that the tools are run from Linux. Ubuntu, CentOS, and Red Hat Enterprise Linux are, currently, the best supported.

A text editor, such as Emacs, will be needed as most orchestration tools store their configurations in text files. Many of the tools and examples described within this book require a web browser to access.

##Related Products
* [Docker Cookbook](https://www.packtpub.com/virtualization-and-cloud/docker-cookbook?utm_source=github&utm_medium=repository&utm_campaign=9781783984862)

* [Mastering Docker](https://www.packtpub.com/virtualization-and-cloud/mastering-docker?utm_source=github&utm_medium=repository&utm_campaign=9781785287039)

* [Docker for Web Developers [Video]](https://www.packtpub.com/virtualization-and-cloud/docker-web-developers-video?utm_source=github&utm_medium=repository&utm_campaign=9781784390679)
###Suggestions and Feedback
[Click here](https://docs.google.com/forms/d/e/1FAIpQLSe5qwunkGf6PUvzPirPDtuy1Du5Rlzew23UBp2S-P3wB-GcwQ/viewform) if you have any feedback or suggestions.
