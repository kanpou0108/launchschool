puts "Do you want me to print something? (y/n)"
answer = gets.chomp

# if answer == 'y' || 'Y'   ←これはだめ.以下の通り、warning出るし、絶対にtrueになってしまう.
# user_input_3_other2.rb:8: warning: string literal in condition
if answer == 'y' || answer == 'Y'
    puts "something"
else
    puts "ok, then I'm done"
end