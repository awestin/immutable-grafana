# immutable-grafana

An example implementation for running Grafana as an immutable Docker container where all configurations are baked into
the image. This eliminates the need for persisted storage and makes the instance very portable.

Inspired by the now-archived [DenisBiondic/ImmutableGrafana](https://github.com/DenisBiondic/ImmutableGrafana).

## Running

Use docker-compose to start Grafana on `localhost:3000`.

```
docker-compose up
```

It also starts a Prometheus instance at `localhost:9090` as a demo datasource for Grafana.

The example configs allow anonymous viewer
access ([see security implications](https://grafana.com/docs/grafana/latest/administration/security/#implications-of-enabling-anonymous-access-to-dashboards))
. Editing dashboards require logging in with username `admin` and password `verysecret`.

If you intend to run Grafana in e.g. AWS ECS, you will want to inject the admin password to the environment as a
container secret from AWS Secrets Manager or Parameter Store.

## Updating dashboards

1) Log in and edit the dashboard as you would normally do
2) Export the dashboard as json and commit the changes to the repository
3) Build and deploy the container

To add new dashboards or datasources, edit the appropriate yaml files.
