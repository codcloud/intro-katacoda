ssh root@host01 "oc create -f https://https://raw.githubusercontent.com/redhat-middleware-hackathon/openshift-files/master/jboss-image-streams.json"
ssh root@host01 "docker pull registry.access.redhat.com/jboss-eap-7/eap70-openshift"
ssh root@host01 'for i in {1..200}; do oc policy add-role-to-user system:image-puller system:anonymous && break || sleep 1; done'
