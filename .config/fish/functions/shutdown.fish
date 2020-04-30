function shutdown
echo 2 > /sys/class/gpio/unexport 
echo 3 > /sys/class/gpio/unexport
echo 4 > /sys/class/gpio/unexport 
echo 17 > /sys/class/gpio/unexport 
end
