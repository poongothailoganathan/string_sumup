require "string_sumup/version"

module StringSumup
  # Your code goes here...
  def self.process(str)
  	if str.include?("-") 
  	  "Error!!"
  	else
  	   str = str.gsub(/[^\d]/, ',')
  	   str = str.split(",").inject(0){|sum,x| sum +  x.to_i }
  	   str
  	end
  end
end
