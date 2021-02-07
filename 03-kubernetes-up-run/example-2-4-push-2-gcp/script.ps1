# get list of images
docker image ls

# assume we have simple-container image
# REPOSITORY                               TAG                 IMAGE ID       CREATED        SIZE
# simple-container                         latest              c58415a56743   17 hours ago   914MB

# GCP doc: https://cloud.google.com/container-registry/docs/quickstart#windows
# tag the local image to get really to push t0 GCP
docker tag simple-container:latest gcr.io/lsn-kubernetes/simple-container:2.0

# get the image list to verify the creation
docker image ls
# REPOSITORY                               TAG                 IMAGE ID       CREATED        SIZE
# gcr.io/lsn-kubernetes/simple-container   1.0                 c58415a56743   17 hours ago   914MB
# gcr.io/lsn-kubernetes/simple-container   2.0                 c58415a56743   17 hours ago   914MB
# simple-container                         latest              c58415a56743   17 hours ago   914MB

# authenticate to gcp
gcloud auth configure-docker

# push the image to gcp
docker push gcr.io/lsn-kubernetes/simple-container:2.0

# output screenshot in readme