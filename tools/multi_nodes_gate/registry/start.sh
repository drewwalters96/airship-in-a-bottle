#!/usr/bin/env bash
# Copyright 2018 AT&T Intellectual Property.  All other rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -ex

REGISTRY_DATA_DIR=${REGISTRY_DATA_DIR:-/mnt/registry}

docker run -d \
    -p 5000:5000 \
    -e REGISTRY_HTTP_ADDR=0.0.0.0:5000 \
    --restart=always \
    --name registry \
    -v $REGISTRY_DATA_DIR:/var/lib/registry \
        registry:2
