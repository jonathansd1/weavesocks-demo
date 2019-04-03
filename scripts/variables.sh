#!/usr/bin/env bash

## Fill out required variables and then source this
## file when interacting with AWS and/or K8s.

export EDITOR=vim
export KOPS_STATE_STORE=
export AWS_DEFAULT_REGION=us-east-1
export AWS_DEFAULT_PROFILE=
export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id --profile ${AWS_DEFAULT_PROFILE})
export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key --profile ${AWS_DEFAULT_PROFILE})
