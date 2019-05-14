# Development Environment

The application displays a homepage displaying a Sparta logo and message. 

## Usage

Clone the github repo, open terminal and go inside the directory. The virtual machine can be set up by running: 

``vargrant up``

It has been set up so that the app folder has been synced with the /app directory of the virtual machine. The single command will automatically install NGINX, NodeJS v6.0 and NPM. As well as start NGINX and the app.js file, inside the app folder, using PM2. The commands run for all these operations are written in the provision.sh file, insde the environment folder. 

The website can then be accessed via a browser by going to the custom IP address or URL (set in the vagrant file) and including the port it is running on. 

``development.local:3000``
``192.168.10.100:3000``

To stop and delete the Virtual Machine configuration run:

``vargrant destory``

## Tests

The tests can be run via terminal by going inside the spec-tests folder which is inside the environment directory and running: 

``rake spec``

The tests all pass.
