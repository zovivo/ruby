require 'cmath'
def soNT()
print "Nhap N: "
  a = gets.to_i
if a == 2 
	return true
elsif a <2
	return false
else
	n = CMath.sqrt(a);
(2..n).each do |x|	
	if a % x == 0
		return false
	end
	end
	return true
end
end
puts soNT()