# HDHomeRun DVR Docker Image

Docker image for the HDHomeRun Record DVR software. Dockerfile pulls current beta version. Make

# Details

* Running  RECORD engine 20190611beta1 Creating this image pulls the latest beta. This release supports multiple RECORD engines (e.g. failover).
* Your HDHomerun must be activated as documented in the Silicondust Forum. All rules and policies from Silicondust must be followed.
* Notice the "--net=host".  This is required because I could only get the dvr software to listen on the same IP range used by the container.  For example if the Docker container uses 172.17.x.x but everything on your network is on 192.168.x.x, the dvr software will not be able to discover your HDHomerun hardware.  There is a downside to using "--net=host".  You're basically telling Docker to not containerize the network stack.  I hope to find a workaround in the future.
* By default the video will be stored within the container.  If you want the video to persist a container being detroyed, mount an external volume at /hdhomerun/video


# File/Directory Paths
If you want to customize the configuration, you can create a new Docker layer with your config files.  Just replace the following files with your files.
* hdhomerun.conf = /hdhomerun/etc/hdhomerun.conf
* recorded video path = /hdhomerun/video


# Source
https://github.com/arraylabs/hdhomerun_dvr


# Supported Host Operating Systems
This image will work on almost all modern Linux distros.  Early versions of HDHomerun DVR would not run on a distro that only supports 64 bit binaries.  An example is unRAID, http://lime-technology.com/.   This has now been fixed according to release notes from Silicon Dust, but I've not been able to test because I don't have an unRAID server.  


# Other
HDHomeRun DVR software included in the image is used with the permission of Silicon Dust.
