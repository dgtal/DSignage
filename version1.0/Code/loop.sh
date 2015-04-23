if  find -name "slideshow.jpg"; then 
	sudo rm slideshow.jpg;
fi
 
cd ~/Desktop/SPH_Slides/Raspberry_Pi_1

echo "Entering"

while true ; 
	echo running
	do for i in *[jJ][pP][Gg] ; do 
		cp "$i" ~/Desktop/slideshow.jpg ; 
		echo $i ; 
		sleep 15 ; 
	done ; 
done

