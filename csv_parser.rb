require 'csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'data.csv'

CSV.foreach(filepath, csv_options) do |row|
  # puts row["Phase"]
  # puts row["Unit Number"].inspect
  puts "CR #{row["Phase"]},Unit number #{row["Unit Number"]} Floor #{row["Floor"]} has #{row["Bedrooms"]} bds, has an area of #{row["  BUA"]}m2 with a price of #{row["Price"].strip}"
end
