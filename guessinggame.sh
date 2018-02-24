function files {
   arch=$(ls|wc -l)
   echo $arch
}
numfiles=$(files)
# echo $numfiles
echo "Type the number of files:"
read response
echo "you entered: $response"
while [[ $response -ne $numfiles ]]
do
   if [[ $response -gt $numfiles ]]
   then
       echo "Your choice is too high. Try again:"
       read response
   else 
       echo "Your choice is too low. Try again:"
       read response
   fi
done
echo "Congratulations, your guess is right!!"
