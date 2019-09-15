require 'cmath'
def giaiPT()
print "Nhap a: "
  a = gets.to_i
print "Nhap b: "
  b = gets.to_i
print "Nhap c: "
  c = gets.to_i
delta = b*b - 4*a*c
if delta < 0 
	puts "PT vo nghiem"
elsif delta == 0
	x= -b/(a*2)
	puts "PT co nghiem kep x1 = x2 =#{x}" 
else 
	x1 = (-b + CMath.sqrt(delta))/(a*2)
	x2 = (-b - CMath.sqrt(delta))/(a*2)
	puts "PT co 2 nghiem la x1 = #{x1} va x2 = #{x2}"			
end
end

giaiPT()
