#! bin/sh

mongosh <<EOF
rs.initiate({"_id":"mongoSet","members":[{"_id":1, "host":"localhost:2001"},{"_id":2, "host":"localhost:2002"},{"_id":3, "host":"localhost:2003"}]})
EOF


