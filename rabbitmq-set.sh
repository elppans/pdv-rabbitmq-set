#!/bin/bash

rabbitmq-plugins enable rabbitmq_management
rabbitmqctl delete_user zanthus
rabbitmqctl add_user zanthus zanthus
rabbitmqctl set_user_tags zanthus administrator
rabbitmqctl set_permissions -p / zanthus "." "." ".*"
