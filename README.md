# Apigee-X-Paid-Org-Provisioning

Apigee X - Paid Org Provisioning
The modules described above can also be used to provision paid Apigee X organizations. To create a paid organization you will have to adjust the peering CIDR mask to be of size 16 or 20 and add your KMS keys as described in the module documentation.

 

(Bonus) Apigee hybrid - Control Plane Provisioning
The apigee-organization terraform module can also be used to create an Apigee hybrid organization and its associated environments. Note that the terraform module only covers the installation of the control plane. For installing the runtime we suggest you follow the official runtime installation instructions. For this we enable the required google services:

 
	export PROJECT_ID=my-project-id
	gcloud services enable apigee.googleapis.com --project $PROJECT_ID


...

Similarly to the Apigee X example, we want to initialize, plan, and ultimately apply our terraform script.

 

	terraform init
	terraform plan --var-file="my-hybrid-eval.tfvars" -var=project_id=$PROJECT_ID
	terraform apply --var-file="my-hybrid-eval.tfvars" -var=project_id=$PROJECT_ID
 

