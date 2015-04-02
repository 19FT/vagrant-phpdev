# Create Vagrant Box.

1. Comment out everything except `- init` from `setup.yml`
2. Use correct base box in `Vagrantfile`
3. `cp vm-provisioning/variables.yml.dist vm-provisioning/variables.yml`
4. `vagrant destroy -f`
5. `vagrant up`
6. ssh into box: `sudo su -; dd if=/dev/zero of=file; rm file`
7. Back in host: `vagrant package --output 19ft_phpdev_x.y.z.box`
8. Upload to CDN and release new version on atlas.hashicorp.com
9. delete `19ft_phpdev_x.y.z.box`

