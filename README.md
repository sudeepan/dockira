# dockira
The exhausted individual's humble attempt at (unreasonably) trying to run Kira on the newer Mac(O)s.

# amd64 image (preferred)
Open an integrated terminal, and enter the following command to build an amd64 image, since ginac has potential issues with aarch64:
`docker buildx build --platform linux/amd64 -t dockira:amd64 .`, where the name of the image is `dockira:amd64`.

# Run the image
Running `docker run -i dockira:amd64`
shall generate a new docker container, rename it to `kira` as follows:
`docker rename <container-name> kira`

# Put the contents of script.txt in .zshrc
Now simply run `dkira <jobfile>` from the directory containing the kira job-file, this shall produce the kira `results` sub-directory as output.
