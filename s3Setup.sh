#!/bin/bash

aws s3api create-bucket \
     --bucket $BUCKET_NAME \
     --region $REGION \
     #--create-bucket-configuration LocationConstraint=$REGION

aws s3api put-public-access-block \
    --bucket $BUCKET_NAME \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true"

aws s3api put-bucket-versioning \
    --bucket $BUCKET_NAME \
    --versioning-configuration Status=Enabled
