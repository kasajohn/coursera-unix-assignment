echo "Welcome to the guessing game"
echo "Guess the no. of files present in the current directory:"
read response

gettotalnooffiles () {

local totalfiles=$(ls -ltr | grep "^-" | wc -l)

echo "$totalfiles"
}


nooffiles=$(gettotalnooffiles)
while [[ $response != $nooffiles ]]
do

   if [[ $response -gt $nooffiles ]]
then

   echo "Sorry!! the guess was high"
else
   echo "Sorry!! the guess was low"
fi
   echo "Guess the no. of files present in the current directory:"
   read response
done

echo "Congratulations!! Guessed correctly"
exit 1

