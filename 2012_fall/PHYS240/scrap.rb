
alpha = 23.1
sigma_l = 0.1
l = 59.8
sigma_delta_l = 0.002
delta_l = 0.098
sigma_delta_t = 0.2
delta_t = 71.1

delta_alpha = alpha * Math.sqrt((sigma_l**2/l**2) + (sigma_delta_l**2/delta_l**2) + (sigma_delta_t**2/delta_t**2))

puts "delta_alpha =  #{delta_alpha}"
puts "alpha =  #{alpha}"
puts "range: =  #{(alpha - delta_alpha)} - #{(alpha + delta_alpha)}"