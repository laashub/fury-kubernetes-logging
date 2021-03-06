# Curator

Curator helps you manage your Elasticsearch indices and snapshots via various
operations like delete, snapshot and shard allocation routing. It's mainly used
to managed retention of your infrastructure logs to a given value.

## Requirements

- Kubernetes >= `1.10.0`
- Kustomize >= `v1`

## Image repository and tag

* Curator image: `python:3.6-alpine`
* Curator repo: https://github.com/elastic/curator
* Curator documentation: https://www.elastic.co/guide/en/elasticsearch/client/curator/current/index.html

## Configuration

- Replica number: `1`
- Unit set as `30 days`
- Curator will run every night at 00:15 to check if some indexes need deleting
- Resource limits are `300m` for CPU and `800Mi` for memory


## Deployment

You can deploy Curator by running following command in the root of the project:

```shell
$ kustomize build | kubectl apply -f -
```


## License

For license details please see [LICENSE](https://sighup.io/fury/license)
