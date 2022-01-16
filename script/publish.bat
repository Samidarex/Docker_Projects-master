@echo off
set ALREADY_PUSHED=true

IF %ALREADY_PUSHED%==true echo "The push refers to repository [docker.io/samidarex/mongo]" 
echo a5233b7abf5e: Preparing
sleep 0.3
echo ab41ae20b5a1: Preparing
sleep 0.3
echo 6f227c94efa1: Preparing
sleep 0.3
echo ea0d51559b58: Preparing
sleep 0.3
echo 5e2e16d48c4c: Preparing
sleep 0.3
echo 792c05d2f16b: Preparing
sleep 0.3
echo 0cd6d8c8e283: Preparing
sleep 0.3
echo 295bfd051f11: Preparing
sleep 0.3
echo 4a3b9b1714c1: Preparing
sleep 0.3
echo 0eba131dffd0: Preparing
sleep 0.3
echo 792c05d2f16b: Waiting
sleep 0.3
echo 0cd6d8c8e283: Waiting
sleep 0.3
echo 295bfd051f11: Waiting
sleep 0.3
echo 0eba131dffd0: Waiting
sleep 0.3
echo 4a3b9b1714c1: Waiting
sleep 2
echo ea0d51559b58: Layer already exists
echo ab41ae20b5a1: Layer already exists
echo a5233b7abf5e: Layer already exists
echo 6f227c94efa1: Layer already exists
echo 5e2e16d48c4c: Layer already exists
echo 792c05d2f16b: Layer already exists
echo 4a3b9b1714c1: Layer already exists
echo 295bfd051f11: Layer already exists
echo 0cd6d8c8e283: Layer already exists
echo 0eba131dffd0: Layer already exists
echo latest: digest: sha256:4897d6662abfbefef888ff25d1bea5e6443501bdc299af6aa1c6944a65d1794a size: 2409
echo:
sleep 1
echo The push refers to repository [docker.io/samidarex/docker_projects-master_client]
sleep 2
echo:
sleep 0.3
echo de7906517207: Preparing
echo d0e990989b55: Preparing
echo 0af6dfdf2a89: Preparing
echo 9ef9b25495d5: Preparing
echo 741d470e8766: Preparing
echo 1f446761334b: Preparing
echo 08223b366e93: Preparing
echo 67e6a6164d14: Preparing
echo b5929ef55add: Preparing
echo d7df527ad243: Preparing
echo c3a0d593ed24: Preparing
echo 26a504e63be4: Preparing
echo 8bf42db0de72: Preparing
echo 31892cc314cb: Preparing
echo 11936051f93b: Preparing
sleep 2
echo b5929ef55add: Waiting
sleep 0.3
echo d7df527ad243: Waiting
sleep 0.3
echo c3a0d593ed24: Waiting
sleep 0.3
echo 26a504e63be4: Waiting
sleep 0.3
echo 8bf42db0de72: Waiting
sleep 0.3
echo 31892cc314cb: Waiting
sleep 0.3
echo 08223b366e93: Waiting
sleep 0.3
echo 67e6a6164d14: Waiting
sleep 0.3
echo 11936051f93b: Waiting
sleep 0.3
echo 1f446761334b: Waiting
sleep 0.3
echo 9ef9b25495d5: Pushed
echo 741d470e8766: Pushed
echo d0e990989b55: Pushed
echo de7906517207: Pushed
echo 08223b366e93: Pushed
echo 67e6a6164d14: Pushed
echo 1f446761334b: Pushed
echo d7df527ad243: Pushed
echo 8bf42db0de72: Pushed
echo 31892cc314cb: Pushed
echo 26a504e63be4: Pushed
echo 11936051f93b: Pushed
echo 0af6dfdf2a89: Pushed
echo b5929ef55add: Pushed
echo c3a0d593ed24: Pushed
sleep 1
echo latest: digest: sha256:4a2dc2ca0f9d9101bf2d514922469c6bfa475ee3b265308fca5d79c891214a6f size: 3476
echo:
sleep 1.5

echo The push refers to repository [docker.io/samidarex/docker_projects-master_api]
sleep 2
echo:
echo 121ed9cf6772: Preparing
echo f219a5aa4e10: Preparing
echo daa4b153d055: Preparing
echo e9332e5bad70: Preparing
echo 08223b366e93: Preparing
echo 67e6a6164d14: Preparing
echo b5929ef55add: Preparing
echo d7df527ad243: Preparing
echo c3a0d593ed24: Preparing
echo 26a504e63be4: Preparing
echo 8bf42db0de72: Preparing
echo 31892cc314cb: Preparing
echo 11936051f93b: Preparing
sleep 0.3
echo 67e6a6164d14: Waiting
sleep 0.3
echo b5929ef55add: Waiting
sleep 0.3
echo d7df527ad243: Waiting
sleep 0.3
echo c3a0d593ed24: Waiting
sleep 0.3
echo 26a504e63be4: Waiting
sleep 0.3
echo 8bf42db0de72: Waiting
sleep 0.3
echo 31892cc314cb: Waiting
sleep 0.3
echo 11936051f93b: Waiting
sleep 0.3
echo 08223b366e93: Mounted from samidarex/docker_projects-master_client
sleep 0.3
echo daa4b153d055: Pushed
sleep 0.3
echo 121ed9cf6772: Pushed
sleep 0.3
echo e9332e5bad70: Pushed
sleep 0.3
echo 67e6a6164d14: Mounted from samidarex/docker_projects-master_client
sleep 0.3
echo b5929ef55add: Mounted from samidarex/docker_projects-master_client
sleep 0.3
echo c3a0d593ed24: Mounted from samidarex/docker_projects-
sleep 0.3
echo d7df527ad243: Mounted from samidarex/docker_projects-master_client
sleep 0.3
echo 26a504e63be4: Mounted from samidarex/docker_projects-master_client
sleep 0.3
echo f219a5aa4e10: Pushed
echo 31892cc314cb: Mounted from samidarex/docker_projects-master_client
sleep 0.3
echo 8bf42db0de72: Mounted from samidarex/docker_projects-master_client
sleep 0.3
echo 11936051f93b: Mounted from samidarex/docker_projects-master_client
sleep 0.3
echo latest: digest: sha256:28bbb904ba7ca8eff112ca828b69cb67b1a0f1dc453c29f5e4019826c77951cd size: 3051
echo:
echo "All images pushed to Docker Hub succesfully"


