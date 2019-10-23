number_files=$(ls -1 | wc -l)
echo $number_files

finish=0

#ask for user guess

while [[ $finish -eq 0 ]] 
do

echo "Type the number of files in the directory and press Enter:"
read user_guess
echo "You entered: $user_guess"

[[ $user_guess -gt $number_files ]] && echo "What you've entered is greater than the real number of files in this directory. Try again"
[[ $user_guess -lt $number_files ]] && echo "What you've entered is lesser than the real number of files in this directory. Try again"
[[ $user_guess -eq $number_files ]] && echo "Nailed it. Congrats" && let finish=1

done

echo "Bye"
