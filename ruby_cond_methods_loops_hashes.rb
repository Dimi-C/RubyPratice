require 'io/console'
#i = 1

#while i<=20
#    p i 
#    i+=1
#end

#def one_to_ten (num)
#    if num.between?(1,10)
#       puts 'Valid'
#    else
#        puts 'Invalid'
#    end
#end
#one_to_ten(4)
#one_to_ten(11)
#one_to_ten(-4)

#def fizz_buzz (num)
#    i = 1
#    while i <=num do
#        if i%5 == 0 and i%3 == 0
#            puts 'FizzBuzz'
#        elsif i%3 == 0
#            puts 'Fizz'
#        elsif i%5 == 0
#            puts 'Buzz'
#        else
#            puts i
#        end
#        i+=1
#    end
#end

#fizz_buzz(100)

#def sum_of (num1,num2)
#    puts num1 + num2
#end
#sum_of(3,5)


#def is_even (num)
#    if num%2 == 0
#        puts 'True'
#    else
#        puts 'False'
#    end
#end

#is_even(9)
#is_even(4)


# arr_words = ['these','are','words','yes','words']

# def capital_words (arr)
#     arr.each do | element |
#         p element.capitalize 
#     end
# end

# capital_words(arr_words)



# def rps_game (n1,n2)
#     name1 = n1
#     name2 = n2
#     rps = ['rock','paper','scissors']
#     puts "Pick your stances of either (#{rps[0]}) (#{rps[1]}) or (#{rps[2]})"
#     puts "#{name1} enter your stance:"
#     p1 = STDIN.noecho(&:gets).chomp.downcase
#     puts "#{name2} enter your stance:"
#     p2 = STDIN.noecho(&:gets).chomp.downcase
#     if rps.include?(p1) and rps.include?(p2)
#         if p1 == p2
#             puts "It was a draw, #{name1} and #{name2} both picked #{p1}"
#         end
#         flip = [p1,p2,name1]
#         i = 0
#         while i <= 1
#             if rps[0] == flip[0] and rps[2] == flip[1]
#                 puts "#{flip[2]} wins and picked #{flip[0]}"
#             elsif rps[1] == flip[0] and rps[0] == flip[1]
#                 puts "#{flip[2]} wins and picked #{flip[0]}"
#             elsif rps[2] == flip[0] and rps[1] == flip[1]
#                 puts "#{flip[2]} wins and picked #{flip[0]}"
#             end
#             flip = [p2,p1,name2]
#             i+=1
#         end
#     else
#       puts "please enter either (#{rps[0]}) (#{rps[1]}) or (#{rps[2]})"
#       rps_game(name1,name2)
#   end
# end

# def rps_greet ()
#     puts 'Player 1 enter your name:'
#     name1 = gets.chomp
#     puts 'Player 2 enter your name:'
#     name2 = gets.chomp
#     rps_game(name1,name2)
# end

# rps_greet()



def valid_date
    puts 'Checks if date valid, ONLY ENTER NUMBERS MM/DD/YYYY'
    puts 'Please enter month:'
    month = gets.chomp.scan(/\d/).join.to_i #EXPECTS A INPUT OF A NUMBER FROM USER
    puts 'Please enter day:'
    day = gets.chomp.scan(/\d/).join.to_i   #EXPECTS A INPUT OF A NUMBER FROM USER
    puts 'Please enter year'
    year = gets.chomp.scan(/\d/).join.to_i  #EXPECTS A INPUT OF A NUMBER FROM USER
    leap_year = [1904,1908,1912,1916,1920,1924,1928,1932,1936,1940,1944,1948,1952,1956,1960,1964,1968,1972,1976,1980,1984,1988,1992,1996,2000,2004,2008,2012,2016,2020]
    day1 = [4,6,9,11]
    day2 = [1,3,5,7,8,10,12]
    dnv = "#{day} is not a valid day"
    msg_valid = "#{month}/#{day}/#{year} is a valid date"
    msd_nvalid = "#{month}/#{day}/#{year} is a not valid date"
    if year.between?(1900,2020)                                 #CHECKS YEAR IF BETWEEN 1900 AND 2020
        if month.between?(1,12)                                 #CHECKS MONTH IF BETWEEN 1 AND 12
            if day1.include? month                              #CHECKS TYPE OF MONTH FOR 30 DAYS
                if day.between?(1,30)                           #CHECKS IF DAY IS BETWEEN 1 AND 30
                    puts msg_valid                              #PRINTS VALID MESSAGE
                else                                            #IF DAY NOT VALID
                    puts msd_nvalid                             #PRINTS INVALID MESSAGE AND RESTARTS METHOD
                    puts dnv
                    valid_date
                end            
            elsif day2.include? month                           #CHECKS TYPE OF MONTH FOR 31 DAYS
                if day.between?(1,31)                           #CHECKS IF DAY IS BETWEEN 1 AND 31
                    puts msg_valid                              #PRINTS VALID MESSAGE
                else                                            #IF DAY NOT VALID
                    puts msd_nvalid                             #PRINTS INVALID MESSAGE AND RESTARTS METHOD
                    puts dnv
                    valid_date
                end
            elsif month == 2                                    #CHECKS TO SEE IF MONTH IS EQUAL TO 2
                if leap_year.include? year                      #CHECKS TO SEE IF IT IS A LEAP YEAR
                    if day.between?(1,29)                       #CHECKS IF DAY IS BETWEEN 1 AND 29
                        puts msg_valid                          #PRINTS VALID MESSAGE
                    else                                        #IF DAY NOT VALID
                        puts msd_nvalid                         #PRINTS INVALID MESSAGE AND RESTARTS METHOD
                        puts dnv
                        valid_date
                    end
                else                                            #ELSE OR IS NOT LEAP YEAR
                    if day.between?(1,28)                       #CHECKS IF DAY IS BETWEEN 1 AND 28
                        puts msg_valid                          #PRINTS VALID MESSAGE
                    else                                        #IF DAY NOT VALID
                        puts msd_nvalid                         #PRINTS INVALID MESSAGE AND RESTARTS METHOD
                        puts dnv
                        valid_date
                    end
                end
            end
        else                                                    #IF MONTH NOT VALID
            puts msd_nvalid                                     #PRINTS INVALID MESSAGE AND RESTARTS METHOD
            puts "#{month} is not a valid month. Please try again"
            valid_date
        end
    else                                                        #IF YEAR IS NOT VALID
        puts msd_nvalid                                         #PRINTS INVALID MESSAGE AND RESTARTS METHOD
        puts "#{year} is not a valid year. Please try again"
        valid_date
    end
end

valid_date




