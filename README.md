# gcp_assesement
We have a setup which contains a vcp named vpc-01 with 2 custom subnets. Region selected is europe-west1. We have also, a vm instance, a NAT router, a TCP loadbalancer. A firewall rule for accessing the vm with internal ip (IAP) is in place. 
Based on the above setup please proceed with the following objectives.


<u>Objectives</u>

- Create a second vm in the same subnet as the first one and also do the necessary actions so as load balancer to target it.

- Create a service account with roles compute.admin and storage.admin (ideally assign the roles with iteration)

- VM has no public IP, we would like to provide access to the internet to VM, what actions should be done? Try to do the necessary changes in code so as vm to communicate with the outside world.

- Try to SSH from one vm to another. Ensure that communication can be established.

- Verify that load balancer is working.

- Create a 3rd VM in the second subnet (subnet-02) and assign the service account created previously.

- Create a bucket with versioning enabled.

- Create a custom role (id = storage.bucketsReader) with permissions to list only buckets.

- Create a new service account and assign the custom role to it. Then add the service account as member to the bucket created in previous step.

- Create an iam policy with roles Storage Object Viewer (roles/storage.objectViewer) and member test.user@ma-z.com. Set this policy to the bucket created in previous step.
