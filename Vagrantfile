Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "lucid32"
  # config.vm.box_url = "http://files.vagrantup.com/lucid32.box"

  # Alt.: lucid32 with Virtualbox 4.1.2 updated Guest Additions
  # config.vm.box = "lucid32-vb412"
  # config.vm.box_url = "http://dl.dropbox.com/u/39057380/vagrant-boxes/lucid32_virtualbox_4.1.2.box"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Assign this VM to a host only network IP, allowing you to access it
  # via the IP.
  config.vm.network "33.33.33.10"
  config.ssh.max_tries = 150
  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.

  # NOTE: still might have to use "dev_appserver.py --address=0.0.0.0" in the VM
  config.vm.forward_port "dev_appserver", 8080, 8080

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"

  #config.vm.provision :puppet, :options => "--verbose --debug" do |puppet|
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "vagrant_provisioning"
    puppet.manifest_file  = "google_appengine_python_sdk.pp"
  end

  Vagrant::Config.run do |config|
    config.vm.share_folder("v-root", "/vagrant", ".", :nfs => true)
    config.vm.share_folder("netcycler", "/netcycler", "/Users/mikko/Work/Projects/Netcycler", :nfs => true)
  end

end
