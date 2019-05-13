#Vagrant class use configure method
#Loop through configuration
#Will read through and install it
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  #Access point for the app - connect via the browser. Give it a private IP to connect to
  config.vm.network("private_network", ip: "192.168.10.100")
  #Set url to IP address
  config.hostsupdater.aliases = ["development.local"]

  #Syncing of files:
  ##Get app folder and add to /app inside the VM (link two files together)
  config.vm.synced_folder("app", "/app")

  #Provisioning:
  config.vm.provision("shell", path: "environment/provision.sh")
end
