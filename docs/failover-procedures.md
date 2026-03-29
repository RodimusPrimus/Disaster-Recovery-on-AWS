# Failover and Failback Procedures for VMware to AWS Disaster Recovery

## Failover Procedure
1. **Preparation**  
   1.1 Ensure VMware environment is healthy.  
   1.2 Verify that the AWS infrastructure is set up and accessible.  
   1.3 Check that all necessary data is replicated to AWS.

2. **Initiate Failover**  
   2.1 Access the AWS Management Console.  
   2.2 Locate the replicated VMs in the AWS environment.  
   2.3 Start the AWS Internet Gateway (if not already active).  
   2.4 Launch the replicated VMs and monitor their initialization.  

3. **Update DNS Settings**  
   3.1 Update DNS records to point to AWS IPs.  
   3.2 Wait for DNS propagation to complete.

4. **Testing**  
   4.1 Conduct tests to ensure that applications are functioning properly on AWS.  
   4.2 Verify connectivity and performance of the application.

## Failback Procedure
1. **Preparation**  
   1.1 Verify that the primary data center is operational.  
   1.2 Ensure all changes on AWS are noted for re-syncing.

2. **Initiate Failback**  
   2.1 Access the VMware environment.  
   2.2 Stop the running VMs in AWS.  
   2.3 Initiate the data sync from AWS back to VMware.

3. **Update DNS Settings**  
   3.1 Change DNS records to point back to VMware IPs.  
   3.2 Wait for DNS propagation to complete.

4. **Testing**  
   4.1 Perform tests to confirm applications are running correctly within VMware.  
   4.2 Validate that all data has been successfully synchronized.

## Notes
- Regularly update and review these procedures to accommodate changes in infrastructure and applications.
- Conduct periodic disaster recovery drills to ensure preparedness.