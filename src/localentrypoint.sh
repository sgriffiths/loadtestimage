#!/bin/bash
mkdir /usr/local/jmeter-config/
envsub /usr/local/loadspec.yaml --syntax handlebars /usr/local/jmeter-config/loadspec_1.yaml
yq -y .config /usr/local/jmeter-config/loadspec_1.yaml > /usr/local/jmeter-config/config.yaml

# Moves to work dir to store the large amount of test files for each run
mkdir -p loadtest/workdir
cd loadtest/workdir


echo
echo "Host = $apihost"
echo "Threads = $threads"
echo "Duration = $durationsec"
echo "Rampup = $rampupsec"
echo "Target RPS = $targetrps"

# Runs blazemeter taurus which executes whats in the config.yaml and points jmeter that was copied across unless the switch is given below
# in this case the switch takes precedence
bzt -o modules.jmeter.path=/usr/local/apache-jmeter-5.1.1/bin/jmeter \
    /usr/local/jmeter-config/config.yaml 2>&1 | tee /app/loadtest/workdir/bztOutput.txt  

bztRes=$(grep -oP 'Done performing with code: \K(.*)' /app/loadtest/workdir/bztOutput.txt)
    
if [ $bztRes -ne 0 ]
then
echo "Load test results failed"
else
echo "Load test results passed"
fi