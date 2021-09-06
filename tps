#!/usr/bin/env bash

WORKER=8
TRANSACTION=500

for (( i = 0; i <= $WORKER; i++ )) do
    TRANSACTION=$TRANSACTION ./worker &
done

wait
