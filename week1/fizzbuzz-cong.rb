def checkfizzbuzz()
  print "Nhap kich thuoc: "
  n = gets.to_i
  (1..n).each do |x|
    if x % 2 == 0
      if x % 3 == 0
        puts "#{x} fizzbuzz "
      else
        puts "#{x} fizz"
      end
    elsif x % 3 == 0
      puts "#{x} buzz"
    end
  end
end

checkfizzbuzz()
