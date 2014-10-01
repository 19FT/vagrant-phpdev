# Create Vagrant Box.

1. Comment out `- website` from `setup.yml`
2. Use correct base box in `Vagrantfile`
3. `vagrant destroy -f`
4. `vagrant up`
5. Open VirtualBox GUI and find out id of this VM
6. `cd ~/tmp`
7. `vagrant package --base {VM-ID} --output 19ft\_phpdev\_1.0x.y.box
8. Upload to CDN and release new version on vagrantcloud.com

