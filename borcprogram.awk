BEGIN {
   print "Borc calculation program"
  }

     

NR==1{ 
   tb=$1
   cr=$2 
   manit=tb*cr 
   print "Beginning borc:",$1
   print "Conversion rate:",$2
   print "Borc in AZN:",manit
   next
  }

 {
  print "Payment on: " $3
  print $2
  manit-=$2
  print "balance after:" manit  
  print "dollar balance after: " manit/cr
  print "\n"
  print "\n"
  } 

END {
     print "Total Borc in AZN:" manit
     print "Total Borc in USD:" manit/1.70 
    }  
