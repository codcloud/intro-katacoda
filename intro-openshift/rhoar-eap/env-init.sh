ssh root@host01 'for i in {1..200}; do oc get is -n openshift  && break || sleep 1; done'
ssh root@host01 "for i in {1..200}; do oc create -f https://raw.githubusercontent.com/redhat-middleware-hackathon/openshift-files/master/jboss-image-streams.json -n openshift   && break || sleep 1; done >> /root/env-init.log 2>&1"
ssh root@host01 "docker pull registry.access.redhat.com/jboss-eap-7/eap70-openshift  >> /root/env-init2.log 2>&1"
