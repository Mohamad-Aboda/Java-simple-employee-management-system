#!/bin/bash
docker exec -i employee_management_db mysql -u root -p -e "USE employee_management; source ./sqlScripts/Task2.sql" <<< "password"
