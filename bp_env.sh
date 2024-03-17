# sudo apt-get install unzip -y
# unzip bpx-api-py.zip 
cd bpx-api-py/bpx 
# sudo apt-get install pip -y
# pip install cryptography --break-system-packages 

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <n>"
    exit 1
fi

n=$1

nohup python3 bp_bot.py $n > output_$n.log 2>&1 &
sleep 10
n=$((n+1))
nohup python3 bp_bot.py $n > output_$n.log 2>&1 &
sleep 10
n=$((n+1))
nohup python3 bp_bot.py $n > output_$n.log 2>&1 &
