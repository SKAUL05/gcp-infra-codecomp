# CodeComp3-Provisioning Infrastructure

## Step-by-step guide

1. Setting up Google Cloud Project (skip if you already have a GCP Project)
-  Go to [Google Cloud](https://cloud.google.com/) and click on **Get Started for FREE**.
-  Login using your gmail account, choose your country, accept terms and conditions and click **Continue**.
-  In the next step, fill your details, like account type, Name, Address, credit card details, tax information, etc. If you have old Gmail account and all the information is already there it would take it and you might not have to fill all the details.
-  After filling all the details click on **Start my free trial**.
-  Google will setup your cloud account and in few seconds your Google Cloud Platform account will be ready to start deploying applications on it. It will look like below:
![Project Setup](/assets/gcp-project-setup-modified.jpg)

2. Creating Service Account to access Google Cloud from outside
  - Go to **Navigation Menu(Top left Corner) > IAM & Admin > Service Accounts**
  - Click on **Create Service Account**
  - Under **Service Account Details** provide service account **name** and **description** of your choice and click on **Create**
  ![Service Account Details](/assets/service-account-details-modified.jpg)
  - Under **Service Account Permissions** select **Project > Owner** Role and click on **Continue**
  ![Service Account Permissions](/assets/service-account-permissions-modified.jpg)
  - Keep **User Access Section** unchanged and click on **Done**
  - On Service Account Page click on Actions hamburger menu of Service Account you just created and Click on Create Key
  ![Service Account Create Key](/assets/service-account-create-key-modified.jpg)
  - Select **JSON** option and Click on **Create**. A JSON file will get downloaded on your local system, save it we will need it later*
  ![Service Account JSON](/assets/service-account-json-modified.jpg)

3. Creating Github Secrets
  - Fork this repository
  - Go to **Settings > Secrets** in your forked repository.
  - Click on **New Secret** and add Name as **PROJECT_ID** and value as Project ID of your GCP Project and click on Add Secret
  ![New Secret](/assets/secret-project.JPG)

  - Again click on New Secret and add Name as **GOOGLE_APPLICATION_CREDENTIALS** and value as *contents of json file that you downloaded and click on Add Secret
  
  - KEEP IN MIND, not to change Secret Names otherwise you will need to alter .github/workflows/terraform.yml file

4. Editing github actions workflow to create required infrastructure
  - In your forked repository, Visit .github/workflows/terraform.yml
  - Edit this file online by clicking on pencil icon on top right.
  - Replace your actual codecomp3 team name with <team-name> on line 27 and line 46 as shown in figure below with yellow highligher
  ![Editing github workflow](/assets/terraformYMLfile.png)

  - Click on Start Commit and then Commit Changes
  - On commiting changes, you can see the Git Action running in Actions tab. Wait for this to complete as shown below:
  ![Github Action](/assets/github-action.png)


5. When this Action gets completed you have the infrastructure ready to deploy your codecomp3 bot on.

## Please  follow the remaining steps on this [repo](https://github.com/ayu004/codecomp3.gcp.java) to deploy codecomp3 bot on infrastructure you just created



