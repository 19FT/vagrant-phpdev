# Vagrant PHP development box

Starting with ubuntu/trusty64, this adds MySQL, PHP 5.5 on Apache, with
Mailcatcher, PHPMyAdmin & XHGui profiler.


# Installation into your project

1. Copy `Vagrantfile` and `vm-provisioning` folder into your project.
2. Copy `vm-provisioning/variables.yml.dist` to `vm-provisioning/variables.yml`
   and set appropriately.
3. Open `Vagrantfile` and change:
    - the IP address on `config.vm.network` if you need to.
    - the hostname (`config.vm.network`)
4. Change any other setting that you want to. Especially check out:
    - `vm-provisioning\apachephp\files\php_overrides.ini`
    - `vm-provisioning\mysql\files\mysql_overrides.cnf`
    - `vm-provisioning\website\tempalates\vhost.conf`
5. Add .vagrant to your project's `.gitignore` file.


## Running the VM

1. Install VitualBox, VirtualBox Guest Additions and Vagrant.

2. Run `vagrant up` from the command line.

3. Add hostname to `/etc/hosts`.
   
    - Use the IP address that's in your `Vagrantfile`.
    - use the server-name that you sent up in `variables.yml`.

    i.e. your add this to `/etc/hosts` or `System32\Drivers\Etc\Hosts`:

        192.168.99.2 example.dev mailcatcher.example.dev phpmyadmin.example.dev profiler.example.dev

## URLs

These are the URLs available:

        Website:        http://example.dev
        Mailcatcher:    http://mailcatcher.example.dev
        PHPMyAdmin:     http://phpmyadmin.example.dev
        XHGui profiler: http://profiler.example.dev
