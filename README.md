1) Download from the redhat site the datagrid server distribution. Link: https://access.redhat.com/jbossnetwork/restricted/softwareDownload.html?softwareId=36413
2) Copy the zip file inside the installation directory
3) Run ./build-jdg
4) Run ./build-node-1
5) Run ./build-node-2
6) Run ./build-dr
7) Run ./build-client

Check that you have the following images
```
jdg-6.4.1-node-2                 latest              968552a91463        8 hours ago         934.4 MB
jdg-6.4.1-node-1                 latest              35d9d0d34c5b        8 hours ago         934.4 MB
jdg-6.4.1-client                 latest              c13ec817996b        8 hours ago         374.3 MB
jdg-6.4.1-dr                     latest              6ce48bd36dea        8 hours ago         934.4 MB
```
running the docker command:
```
docker images
```

Now that the docker images are properly created:
1) Run ./run-node-1
2) Run ./run-node-2
3) Run ./run-dr
4) Run ./run-client
5) From the client container copy the /etc/hosts entries for the three containers node-1, node2 and dr into the /etc/hosts for node-1 and node-2; the /etc/hosts should be something like:
```
172.17.0.56	client
127.0.0.1	localhost
::1	localhost ip6-localhost ip6-loopback
fe00::0	ip6-localnet
ff00::0	ip6-mcastprefix
ff02::1	ip6-allnodes
ff02::2	ip6-allrouters

172.17.0.54	dr dr
172.17.0.52	node-1 node-1
172.17.0.53	node-2 node-2
```
5) Now you're ready to start JDG; on each container run the sh file inside the /opt directory
6) Check that the JDG servers are starting properly, you should see a PRIMARY cluster with 2 members a DR cluster with 1 member and one node from PRIMARY and DR connected to the global cluster.
7) Go back to the client container and run ./GO.sh (no output and REMEMBER newlines will shutdown the application, so don't bother to press the enter key :D )
8) Access to DR container with command:
```
docker exec -it <CONTAINER ID> bash
```
9) After few seconds you should see exceptions on PRIMARY master node, the one connected to the global cluster, and warning on the other one
