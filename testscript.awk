BEGIN { print "siktir"}
{
  i=i+$2
}
END { 
   print "sik"
   print i 
    }
