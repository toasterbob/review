require 'csv'
require 'sqlite3'

# Reading the CSV file
companies = CSV.read("TechCrunchcontinentalUSA.csv")
p companies[0]
p companies[1]
# ["permalink", "company", "numEmps", "category", "city", "state", "fundedDate", "raisedAmt", "raisedCurrency", "round"]
# ["lifelock", "LifeLock", nil, "web", "Tempe", "AZ", "1-May-07", "6850000", "USD", "b"]
company_hash = Hash.new(false)

companies.each do |arr|
  if company_hash[arr[1]]
      company_hash[arr[1]] = {permalink => arr[0], numEmps => arr[2], category => arr[3], city => arr[4],
                              state => arr[5], fundedDate => arr[6], raisedAmt => arr[7],
                              raisedCurrency => arr[8], round => arr[9]}
      
  end


end
# YOUR CODE GOES HERE

begin

  db = SQLite3::Database.open "companies.db"
  db.execute "DROP TABLE IF EXISTS Companies"
  db.execute "CREATE TABLE IF NOT EXISTS Companies(Id INTEGER PRIMARY KEY,
      Permalink TEXT, Company TEXT, NumEmps INT, Catergory TEXT, City TEXT, State TEXT, FundedDate TEXT,
      RaisedAmt INT, RaisedCurrency TEXT, Round TEXT)"

  # YOUR CODE GOES HERE

rescue SQLite3::Exception => e

  puts "Exception occurred"
  puts e

ensure
  db.close if db
end


# BONUS: YOUR CODE GOES HERE
