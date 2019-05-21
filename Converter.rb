

#Write a function that takes in an integer and outputs it's equaliavent in words
#Examples

# input     output
######      ######
# 1         One
# 44        Forty Four
# 235       Two Hundred and Thirty Five
# 1000      One Thousand
# 900       Nine Hundred
# 1000100   One Million and Hundred
# 3762      Three Thousand Seven Hundred Sixty Two

def convertIntToWords (number)
    #Hash representing concrete words
    #representation
    rep = {
        1 => 'One',
        2 => 'Two',
        3 => 'Three',
        4 => 'Four',        
        5 => 'Five',
        6 => 'Six',
        7 => 'Seven',
        8 => 'Eight',
        9 => 'Nine',
        10 => 'Ten',
        11 => 'Eleven',
        12 => 'Twelve',
        13 => 'Thirteen',
        14 => 'Fourteen',        
        15 => 'Fifteen',
        16 => 'Sixteen',
        17 => 'Seventeen',
        18 => 'Eighteen',
        19 => 'Nineteen',
        20 => 'Twenty',
        30 => 'Thirty',
        40 => 'Fourty',
        50 => 'Fifty',
        60 => 'Sixty',
        70 => 'Seventy',
        80 => 'Eighty',
        90 => 'Ninty',
        #Realized this is not neccessary 
        #100 => 'Hundred',
        #1000 => 'Thousand',
       # 1000000 => 'Million'
    }


    #This is the output of integer in words
    outputWords = ''
    #numbers less than twenty
    #Realized the solution has to be recursive
    if number <= 20
        outputWords = rep[number] 
     #numbers less than hundred   
    elsif number > 20 && number < 100         
     number % 10 == 0 ? outputWords= rep[number] : outputWords = rep[(number / 10)* 10] + " "+ rep[(number % 10)] 
    elsif number >= 100 && number < 1000

        #Caters for 100, 200, 300, 400, 500, 600, 700, 800, 900
        if (number % 100 == 0)  
            outputWords = rep[number/100] + ' Hundred '
        else   
        #Caters for all numbers whose reminder is not 0 when divided by 100
            outputWords= rep[number / 100] + ' Hundred and ' + convertIntToWords(number % ((number /100)*100))
        end
        #numbers less than a billion
    elsif number >= 1000 && number < 1000000
        number % 1000 == 0 ? 
         outputWords = rep[number/1000] + ' Thousand ' : 
         
         number % ((number /1000)*1000) < 100 ?
         #caters for reminder of 1 upto 99
         outputWords = rep[number / 1000] + ' Thousand and ' + convertIntToWords(number % ((number /1000)*1000)) :
       
         outputWords = rep[number / 1000] + ' Thousand ' + convertIntToWords(number % ((number /1000)*1000))
         #numbers less than a 
    elsif number >= 1000000 && number <1000000000
        number % 1000000 == 0 ? 
         outputWords = rep[number/1000000] + ' Million ' :
         outputWords = rep[number / 1000000] + ' Million ' + convertIntToWords(number % ((number /1000000)*1000000))
    end

   #number % ((number /100)*100)
   
   outputWords
end 


puts convertIntToWords(1999)