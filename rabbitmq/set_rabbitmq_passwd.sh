#!/bin/bash

rabbitmqctl change_password guest RABBIT_PASS
rabbitmqctl start_app