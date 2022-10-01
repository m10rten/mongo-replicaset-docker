# mongo-replicaset-docker

🐳 Never struggle again to create a mongoDB replica set.

This is a simple example of a mongo replicaset using docker-compose.

## Usage

Before you start, make sure you have docker and docker installed.

Once docker is installed, make sure you have your local ip address. You can find this by running `ipconfig` on windows or `ifconfig` on mac.

Put this local IP address in the entrypoint.sh file in the spot where it says: `0.0.0.0` or `localhost`, this is the IP address that the mongo replicaset will use to communicate with each other, without it the replicaset will work, but you won't be able to connect to it from your local machine or any other machine for unknown reasons.

> ⚠️ WARNING: if `0.0.0.0` or `localhost` doesn't work, try using your local IP address.

> ⚠️ WARNING: if for some reason the network in the docker compose does not work, try creating a new network using `docker network create mongo_network` and then change the network in the docker compose to `mongo_network`.

---

Once set up you can run the next command in the root of the project:

```bash
docker compose up --build -d
```

> 📝 Note: The `--build` flag is to ensure that the containers are rebuilt.
> 📝 Note: The `-d` flag is to run the containers in the background, without it, you will see the logs of the containers.

Once the containers are up, you can connect to the mongo shell using the following command:

```bash
docker exec -it m1 mongosh
```

Then you can create the replicaset using the following command:

```bash
/bin/bash /entrypoint.sh
```

> Note: The entrypoint.sh file is in the root of the project.

Once this is done, you can connect to the replicaset using the following string

`mongodb://localhost:2001,localhost:2002,localhost:2003/test?replicaSet=mongoSet`

> 📝 NOTE: the port numbers and replica set name can be changed, but must be changed in all occurrences.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
