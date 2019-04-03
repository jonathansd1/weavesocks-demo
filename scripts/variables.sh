#!/usr/bin/env bash

## Fill out required variables and then source this
## file when interacting with AWS and/or K8s.

EDITOR=vim
KOPS_STATE_STORE=
AWS_DEFAULT_REGION=us-east-1
AWS_DEFAULT_PROFILE=
AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id --profile ${AWS_DEFAULT_PROFILE})
AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key --profile ${AWS_DEFAULT_PROFILE})
