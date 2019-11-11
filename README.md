# nginx-salty...
 
Salt configuration for NGINX to proxy requests to
 a "back end" service running on localhost.
 - Nginx also listens on port 3200
 - local back end listens on port 3400

On Salt master, command line looks like:
  `sudo salt -v '*' state.apply nginx/init`

To validate on the target host (Python3):
   `$ python3 -m http.server --bind=localhost  3400`
 .. will start emulation of back end on localhost:3400

Yet to-do, and other potential enhancements / to-do:
  - firewall configuration
  - Azure deployment
  