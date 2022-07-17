#!/bin/bash
quit=0
while [ $quit -eq 0  ]
do
   dialog --menu "Please select action:" 0 0 0 1 "show all transactions" 2 "add transactaion" 3 "Grand total" 4 "Quit"  2>/tmp/selected_option.txt 

 
   option=$(cat /tmp/selected_option.txt)


    if [ $option -eq 1 ] 
      then
        awk -f borcprogram.awk borcfile.txt > borcout.tmp
        dialog --textbox ./borcout.tmp 22 70
      
     fi


    if [ $option -eq 2 ]
      then
         dialog --inputbox "Please enter transaction details" 20 50 2> tempamount.txt
         amount=$(cat tempamount.txt)
         rm tempamount.txt
         dialog --inputbox "Please enter transaction date" 20 50  "MM/DD/YYYY" 2> tempdate.txt
         trdate=$(cat tempdate.txt)
         echo  $RANDOM $amount $trdate >> borcfile.txt 

 
    fi



    if [ $option -eq 3 ]
      then
        echo "quit var equal"  $quit
        echo "quit var equal"  $quit

    fi
    

    if [ $option -eq 4 ]
      then
        echo "quit var equal"  $quit
        quit=1
        echo "quit var equal"  $quit

    fi

done
