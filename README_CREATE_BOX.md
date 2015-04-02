# Create Vagrant Box.

1. Comment out everything except `- init` from `setup.yml`
2. Ensure that `install_profiler:` is set to `false`` in `variables.yml`
3. Use correct base box in `Vagrantfile`
4. `vagrant destroy -f`
5. `vagrant up`
6. `vagrant package --output 19ft_phpdev_x.y.z.box`
7. Upload to CDN and release new version on atlas.hashicorp.com
8. delete `19ft_phpdev_x.y.z.box`

