#!/usr/bin/env bash
route del -net 0.0.0.0 dev enp4s0
route add -net 172.27.0.0/16 dev enp4s0

