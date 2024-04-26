# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
SalesPerson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file

# .schema

# 1b. check out the model file

puts "Salespeople: #{SalesPerson.all.count}"

# 2. insert 1-2 rows in salespeople table.

new_salesperson = SalesPerson.new
#p new_salespeople
new_salesperson["first_name"] = "Maria Gracia"
new_salesperson["last_name"] = "Moreno Sanchez"
new_salesperson["email"] = "mg.capa.genia@gmail.com"
new_salesperson.save

new_salesperson  = SalesPerson.new
#p new_salespeople
new_salesperson["first_name"] = "Lucas"
new_salesperson["last_name"] = "Cabrera"
new_salesperson["email"] = "lukikapodeazul@gmail.com"
new_salesperson.save

# 3. write code to display how many salespeople rows are in the database
puts "Salespeople: #{SalesPerson.all.count}"
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

mg = SalesPerson.find_by({"first_name"=>"Maria Gracia", "last_name" => "Moreno Sanchez"}) #find the row
mg["email"]= "mg@gmail.com" #change the value
mg.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2

salespeople=SalesPerson.all

for person in salespeople
   # p person
   first_name=person["first_name"]
    last_name=person["last_name"]
   puts "#{first_name} #{last_name}"

end
# Ben Block
# Brian Eng
