# Challange_123

Challange 1:
Build 3 Tier environment setup
 The Diagram represents design which can be used to depoy a 3 Tier environment.
 Below are the design considerations
 Network: 
 1. Each tier will have its own subnets so that the traffic is controlled via VPC firewall rules
 2. Firewall rules will be restricted to only allow traffic from Load Balancer for Web and APP Instance groups
 3. DB server can only be access from application server on specfic non-standard port
 4. Traffic to Internet would be via Cloud Nat if required
 5. Addtionally VPC server contol can also be configured 
 6. Cloud Armor will be configred with Global Load balancer for WAF security
 
 Compute:
 1. VM instance group is used to deploy Web and Applications, Cloud run , GKE or Cloud function can also be considered if you want to go cloud native and managed instance
 2. Clould SQL is used as a DB server

High Avialbility
1. Instance group will be used with a regional configuration so that VM's deployed will be in multiple zones which will provide resilence for zone failure
2. If possible use Managed services like Cloud Run, App Engine, Cloud function, Cloud SQL , Bigquery werever possible
3. Load balancer will be used to divert the traffic for multi regional or Regional deployments which detects failure and redirects traffic

Management
1. IAP can be used to login to VM instances which has private IP's
2. Monitoring , Logging needs to be configured to better visibility of resources and alerts needs to be configured for reporting
3. All the deployment has to be done via IAC so that changes/ fix can be done faster.
4. The Code should have variables for Location, Environment ( DEV,UAT,Prod, etc ),Keys, Roles etc so that same code can be reused.


 
