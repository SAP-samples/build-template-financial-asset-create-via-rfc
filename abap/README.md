# SAP Build Extensibility Scenario
# Function Module in S/4HANA

## Overview

The remote-enabled function module is a simple wrapper for the standard BAPI BAPI_FIXEDASSET_CREATE1.
This is technically required to ensure the execution of an explicit commit in S/4HANA and save the newlz created Asset in the corresponding persistence lazer.

## Technical Details

<p><img width="1289" alt="image" src="https://github.com/SAP-samples/build-extensibility---approval-process-for-financial-asset-in-s-4hana/blob/main/abap/pictures/zbapi_fixedasset_create_01.jpg" /></p>

<p><img width="1289" alt="image" src="https://github.com/SAP-samples/build-extensibility---approval-process-for-financial-asset-in-s-4hana/blob/main/abap/pictures/zbapi_fixedasset_create_02.jpg" /></p>

<p><img width="1289" alt="image" src="https://github.com/SAP-samples/build-extensibility---approval-process-for-financial-asset-in-s-4hana/blob/main/abap/pictures/zbapi_fixedasset_create_03.jpg" /></p>

<p><img width="1289" alt="image" src="https://github.com/SAP-samples/build-extensibility---approval-process-for-financial-asset-in-s-4hana/blob/main/abap/pictures/zbapi_fixedasset_create_04.jpg" /></p>

<p><img width="1289" alt="image" src="https://github.com/SAP-samples/build-extensibility---approval-process-for-financial-asset-in-s-4hana/blob/main/abap/pictures/zbapi_fixedasset_create_05.jpg" /></p>

<p><img width="1289" alt="image" src="https://github.com/SAP-samples/build-extensibility---approval-process-for-financial-asset-in-s-4hana/blob/main/abap/pictures/zbapi_fixedasset_create_06.jpg" /></p>

## Source Code

Please refer to the file [_zbapi_fixedasset_create.abap_](zbapi_fixedasset_create.abap).

