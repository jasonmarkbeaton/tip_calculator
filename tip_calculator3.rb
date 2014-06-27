puts "Tell me how much the meal was (e.g., 22.45): $ "
meal_cost = Float(gets)
puts "Give me the tax percentage (e.g., 12.5 or 15): "
tax_percent = Float(gets)
puts "put in the tip percentage you want to leave (e.g., 18): "
tip_percent = Float(gets)
 
def calculate_rate(base, percentage)
  amount = base * percentage / 100
  return amount
end
 
tax_value = calculate_rate(meal_cost, tax_percent)
meal_with_tax = meal_cost + tax_value
tip_value = calculate_rate(meal_with_tax, tip_percent)
total_cost = meal_with_tax + tip_value
 
print "The meal cost you $%.2f.\n" % meal_cost
print "Because we're a capitolist country you owed %d%% on top of that, so it cost you $%.2f.\n" % [tax_percent, tax_value]
print "For a %d%% tip, and to keep that server from being homeless, you should leave $%.2f.\n" % [tip_percent, tip_value]
print "You pay, out the butt $%.2f.\n" % total_cost