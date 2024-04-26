# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all #elimina todo de la companies table para que no duplique las companies cada vez q la corro. Pero el id no se elimina por eso apple es id 3
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Company.all.count} companies"

# 2. insert new rows in companies table

new_company  = Company.new
p new_company
new_company ["name"] = "Apple"
new_company ["city"] = "Cupertino"
new_company ["state"] = "CA"
new_company ["url"] = "https://apple.com"
p new_company
new_company.save # con esto se guarda y se le asigna un id

# p new_company

new_company  = Company.new
p new_company
new_company ["name"] = "Amazon"
new_company ["city"] = "Seattle"
new_company ["state"] = "WA"
new_company ["url"] = "https://amazon.com"
new_company.save

new_company  = Company.new
p new_company
new_company ["name"] = "Twitter"
new_company ["city"] = "San Francisco"
new_company ["state"] = "CA"
new_company ["url"] = "https://twitter.com"
new_company.save

puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

        #all companies
        all_companies = Company.all
        p all_companies

        # just california
        cali_companies = Company.where ({"state" => "CA"})
        p cali_companies
        
        puts "California companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple

apple = Company.find_by({"name" => "Apple"})
p apple

# 5. read a row's column value

p apple ["name"]
p apple ["url"]
p apple ["id"]

# 6. update a row's column value

twitter = Company.find_by ({"name"=> "Twitter"})
p twitter
twitter["url"] = "xx.com"
twitter["name"] = "X (formerly twitter)"
twitter.save
p twitter


# 7. delete a row

x = Company.find_by({"name" => "X (formerly twitter)"})
x.destroy


puts "There are #{Company.all.count} companies"