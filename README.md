# Vagrant PHP development box

Starting with ubuntu/trusty64, this adds MySQL, PHP 5.5 on Apache, with
Mailcatcher and PHPMyAdmin.


# Installation into your project

1. Copy `Vagrantfile` and `provisioning` folder into your project.
2. Open `provisioning/variables.yml` and set appropriately.
3. Open `Vagrantfile` and change the IP address if you want to.
4. Change any other setting that you want to. Especially check out:
    - `provisioning\apachephp\files\php_overrides.ini`
    - `provisioning\mysql\files\mysql_overrides.cnf`
    - `provisioning\website\tempalates\vhost.conf`
5. Add .vagrant to your project's `.gitignore` file.


## Running the VM

1. Install VitualBox, VirtualBox Guest Additions and Vagrant.

2. Run `vagrant up` from the command line.

3. Add hostname to `/etc/hosts`.
   
    - Use the IP address that's in your `Vagrantfile`.
    - use the server-name that you sent up in `variables.yml`.
      
    If you are on Linux, run this:

        (echo ; echo "192.168.99.2 example.dev mailcatcher.example.dev phpmyadmin.example.dev") | sudo tee -a /etc/hosts

    If you are on OSX, run this:

        echo "192.168.99.2 example.dev mailcatcher.example.dev phpmyadmin.example.dev" | sudo tee -a /etc/hosts

    If you are on Windows, run this on the cmd line

        echo 192.168.99.2 example.dev mailcatcher.example.dev phpmyadmin.example.dev >> %SYSTEMDRIVE%\Windows\System32\Drivers\Etc\Hosts


## URLs

These are the URLs available:

    * Website: [http://example.dev](http://example.dev)
    * Mailcatcher: [http://mailcatcher.example.dev](http://mailcatcher.example.dev)
    * PHPMyAdmin: [http://phpmyadmin.example.dev](http://phpmyadmin.example.dev)
