# gcp_assesement
We have a setup which contains a vcp named vpc-01 with 2 custom subnets. Region selected is europe-west1. We have also, a vm instance, a NAT router, a TCP loadbalancer. A firewall rule for accessing the vm with internal ip (IAP) is in place. 
Based on the above setup please proceed with the following objectives.


<u>Objectives</u>

- Create a second vm in the same subnet as the first one and also do the necessary actions so as load balancer to target it.

- Create a service account with roles compute.admin and storage.admin

- VM has no public IP, we would like to provide access to the internet to VM, what actions should be done? Try to do the necessary changes in code so as vm to communicate to the outside world.

- Create a bucket with versioning enabled.

- Try to SSH from one vm to another. Ensure that communication can be established.

- Verify that load balancer is working.

- Create a custom role with permissions to list only buckets.

- Assign this custom role to your user.

- Create a 3rd VM in the second subnet (subnet-02) and assign the service account created previously.