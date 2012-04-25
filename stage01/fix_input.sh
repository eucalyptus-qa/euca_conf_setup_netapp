#!/bin/bash
SANPROVIDER="NetappProvider"
STORAGEMANAGER="SANManager"
DISABLE_ISCSI="N"
echo "Setting $STORAGEMANAGER"
perl -i -p -e "s/EBS_STORAGE_MANAGER=.*\n/EBS_STORAGE_MANAGER=$STORAGEMANAGER\n/g" ../input/2b_tested.lst
echo "Setting $SANPROVIDER"
perl -i -p -e "s/SAN_PROVIDER=.*\n/SAN_PROVIDER=$SANPROVIDER\n/g" ../input/2b_tested.lst
echo "Setting $DISABLE_ISCSI"
perl -i -p -e "s/DISABLE_ISCSI=.*\n/DISABLE_ISCSI=$DISABLE_ISCSI\n/g" ../input/2b_tested.lst

