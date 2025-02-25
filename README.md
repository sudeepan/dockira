# dockira
The exhausted individual's humble attempt at (unreasonably) trying to run Kira on the newer Mac(O)s.

# amd64 image (preferred)
First, confirm the docker engine is running. Open an integrated terminal, and enter the following command to build an amd64 image, since ginac has potential issues with aarch64:
`docker buildx build --platform linux/amd64 -t dockira:amd64 .`, where the name of the image is `dockira:amd64`.

Alternatively, pull the image from dockerhub: `docker pull sudeepan/dockira:amd64`. If you use this, change the name of the image from `dockira:amd64` to `sudeepan/dockira:amd64` in the following steps.

# Run the image
Running `docker run -i dockira:amd64`
shall generate a new docker container, rename it to `kira` as follows:
`docker rename <container-name> kira`

# Put the contents of script.txt in .zshrc
Now simply run `dkira <jobfile>` from the directory containing the kira job-file, this shall produce the kira `results` sub-directory as output.
