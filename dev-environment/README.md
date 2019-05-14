# Dev-Environments
Vagrant vagrant-based development environment using node.js

### Installation
#### Dependencies
To use this development environment, you need to have Vagrant vagrant-install and VirtualBox virtualbox-install installed.

#### Starting Vagrant
First, clone the repo,

```$ git clone git@github.com:qamaraden/Dev-Environments.git```

```$ cd Dev-Environments```

#### Testing
Step 1: You can make sure that everyhthing is installed properly by doing a spec test. The spec test can be found in the following folder:

```$ cd environment/spec-tests```

Step 2: Bundle to make sure all the gems are installed 

```$ bundle```

Step 3: Make sure there's a spec folder in there. Now 'rake spec

```$ rake spec```

Step 4: If the test runs and there are 0 failures then you can skip this step. if the test comes back with any failures, go into the provision.sh file in environment folder and make sure that this is in it:

```sudo apt-get update -y```

```sudo apt-get upgrade -y```

```sudo apt-get install nginx -y```

```sudo apt-get install nodejs npm -y```

```curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -```

```sudo apt-get install -y nodejs```

```npm install pm2 -g```

```cd /app```

```npm install```

```pm2 start app.js ```


Step 5: Now you can build the VM:


```$ vagrant destroy```

then

```$ vagrant up```


Step 6: The url below should now be able to run your app.js on your web browser:

http://development.local:3000/

and it should say that the app is running correctly.

