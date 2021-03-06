@test "testing kustomize build cerebro-deployment" {
  cd examples/cerebro-deployment
  furyctl install
  kustomize build
  rm -rf vendor
}
@test "testing kustomize build elasticsearch-resources" {
  cd examples/elasticsearch-resources
  furyctl install
  kustomize build
  rm -rf vendor
}
@test "testing kustomize build fluent-bit-deployment" {
  cd examples/fluent-bit-deployment
  kustomize build
}
@test "testing kustomize build kibana-node-selector" {
  cd examples/kibana-node-selector
  furyctl install
  kustomize build
  rm -rf vendor
}
