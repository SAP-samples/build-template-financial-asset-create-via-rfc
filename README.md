# SAP Build Extensibility Scenario
# Approval for Financial Asset Creation in S/4HANA

## Overview

This scenario allows to establish a lean governance process for the creation of Financial Assets in SAP S/4HANA.
The project represents an example how SAP Build can consume and invoke BAPIs and Remote Function Calls (RFC) to connect with SAP S/4HANA.

Business users can request the creation of new Financial Assets using a dedicated mobile app developed in SAP Build Apps: once a request is submitted, a dedicated workflow - defined in SAP Build Process Automation - is triggered for further review and approval. To ensure a proper segregation of responsibilities, the list of reviewers is determined based on the Company Code specified in the request.
Once a request is finalized and approved, the corresponding data are pushed to S/4HANA, the new Financial Asset is created in the system and the process completed.

> [!Note]
  > - This usecase is developed using SAP Build Apps and SAP Build Process Automation services.
  > - Records are finally created in an S/4HANA system; therefore its availability is required to enable the end-to-end scenario

### Key Features
- Enables a lean governance process for new Financial Assets.
- Enforces segregation of duties: users can request Financial Assets only for the Compnay Codes they are authorized to; dynamic approvers determination based on Company Code.
- Enables approvers to review the creation request.
- Enables requestors to modify and resubmit the rejected requestes.

## Solution Flow

<p><img width="1289" alt="image" src="https://github.com/SAP-samples/build-extensibility---approval-process-for-financial-asset-in-s-4hana/blob/main/pictures/solution_flow.jpg" /></p>

 
1. From Work Zone (or using a direct link), the requestor access the dedicated mobile application
    - the app is technically developed in SAP Build Apps
3. The requestor maintain the desired attributes 
    - The field "Company Code" is pre-populated based on the requestor's roles and uathorizations
    - Format validations are executed at runtime as soon as the user maintain a field in the app
4. Once done, the user click the "submit" button to trigger the corresponding approval proces
    - The process is defined and implemented in SAP Build Process Automation;
5. In the background, the system dynamically determines the list of approvers based on the selected Company Code
6. The request is then routed to the authorized approvers for review and validation
    - The workitems to be evaluated are accessible from the SAP Build Inbox
7. The approver must add a comment to the request and then he can decide to apporve or reject it
8. In case the request is approved, the data are then pushed to the S/4HANA backend via an RFC call

## Download and Installation

> [!Note]
> This use case is developed using SAP Build Apps and SAP Build Process Automation services. To complete the setup of this scenario, please There are 3 content packages associated with this use case. One each for SAP Build Apps, SAP Build Process Automation. You are currently setting up SAP Build Code content. Later you will follow the instructions to setup SAP Build Apps and Build Process Automation content packages, which will complete the setup of this usecase.

### :one: Setup of the content in S/4HANA on-prem/private cloud
The required function module must be manually created in the customer namespace in the target S/4HANA system - please refer to the dedicated [README](https://github.tools.sap/OSS-Outbound-Process/sap-build-approval-process-for-financial-asset-rfc/blob/main/ABAP/README.md) file.

### :two: Installation and configuration of Cloud Connector
SAP Cloud Connector is required to establish a connection between SAP Build and an S/4HANA backend; therefore its configuration and operability is pre-requisites for this scenario.

> [!Note]
> The configuration and setup of Cloud Connector is not covered by this document.

### :three: Import the action in SAP Build
The action "" is a dependency for the automation process and it must be imported in your tenant as part of the initial project setup.

The content is stored in folder ["actions"](/build/actions) and it can be downloaded from there.

> [!Note]
> The setup of the required destination to the S/4HANA backend is not covered by this document. The destination must be defined both in the BTP cockpit as well in SAP Build.

### :four: Import the content for SAP Build Apps
The content is stored in folder ["build_apps"](/build/build_apps) and it can be downloaded from there.

To import the content in your tenant, please follow the procedure described in the [official documentation of SAP Build](https://help.sap.com/docs/build/sap-build-core/import-project).

### :five: Import the content for SAP Process Automation
The content is stored in folder ["build_process_automation"](/build/build_process_automation) and it can be downloaded from there.

To import the content in your tenant, please follow the procedure described in the [official documentation of SAP Build](https://help.sap.com/docs/build/sap-build-core/import-project).

## License
Copyright (c) 2025 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSE) file.

