puts "How much did the meal cost?"
meal_cost = Float(gets)
puts "What's the meal tax rate?"
tax_percent = Float(gets)
puts "What percent tip would you like to give?"
tip_percent = Float(gets)

tax_value = meal_cost * tax_percent/100
meal_with_tax = meal_cost + tax_value
tip_value = meal_with_tax * tip_percent/100
total_cost = meal_with_tax + tip_value

print "The pre-tax cost of your meal was $%.2f.\n" % meal_cost
print "At %d%%, tax for this meal is $%.2f.\n" % [tax_percent, tax_value]
print "For a %d%% tip, you should leave $%.2f.\n" % [tip_percent, tip_value]
print "The grand total for the meal is then $%.2f.\n" % total_cost
