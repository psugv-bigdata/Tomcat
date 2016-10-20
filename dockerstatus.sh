#!/bin/bash
container_id=$(docker ps -a | cut -c 1-20)
container_id_ele=($container_id)
container_status=$(docker ps -a | cut -c 80-100)
container_status_ele=($container_status)

hostip=`ifconfig eno1 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
cat > /home/docker/index.html <<EOF
<html>
 <body>
   <table border=1>
     <tr>
         <td>Host</td>
         <td>Container Id</td>
         <td>Status</td>
     </tr>
     <tr>
        <td> $hostip </td>
        <td> ${container_id_ele[2]}</td>
        <td> ${container_status_ele[1]} ${container_status_ele[2]} ${container_status_ele[3]} </td>
     </tr>
   </table>
Note : Status will be updated every 5 seconds
 </body>
</html>
EOF
`docker cp /home/docker/index.html tomcat:/opt/tomcat/webapps/ROOT/`
