#!/usr/bin/env bash

seal autonomous \
  --aws \
  --inventory-kubernetes \
  --kubeconfig ~/.kube/config \
  --remote-user admin \
  --ssh-allow-missing-host-keys \
  --stdout-collector \
  --policy-file powerfulseal/az_outage.yml
