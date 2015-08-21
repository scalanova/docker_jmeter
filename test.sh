echo "Please enter Orion Domain IP address..."
read ip
echo "IP address is: $ip"
echo "Please enter Orion Port..."
read port
echo "Port is: $port"
echo "Please enter number of threads..."
read thread
echo "Number of threads is: $thread"
echo "Please enter number of loops..."
read loop
echo "Number of loops is: $loop"

cp OrionTestPlan.jmx Test.jmx

sed -i -e s/_ip_/$ip/g Test.jmx
sed -i -e s/_port_/$port/g Test.jmx
sed -i -e s/_thread_/$thread/g Test.jmx
sed -i -e s/_loop_/$loop/g Test.jmx

echo "Running Docker JMeter Instance With Parameters Provided..."

sudo make test Test.jmx
