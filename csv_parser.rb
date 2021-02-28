# require 'csv'

# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
# filepath    = 'data.csv'

# CSV.foreach(filepath, csv_options) do |row|
#   # puts row["Phase"]
#   # puts row["Unit Number"].inspect
#   puts "CR #{row["Phase"]},Unit number #{row["Unit Number"]} Floor #{row["Floor"]} has #{row["Bedrooms"]} bds, has an area of #{row["  BUA"]}m2 with a price of #{row["Price"].strip}"
# end

# load the gem
# require 'cloudmersive-convert-api-client'
# # setup authorization
# CloudmersiveConvertApiClient.configure do |config|
#   # Configure API key authorization: Apikey
#   config.api_key['Apikey'] = '124fce45-7689-4739-9752-45b1682a1e28'
#   # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
#   # config.api_key_prefix['Apikey'] = 'Bearer'
# end

# api_instance = CloudmersiveConvertApiClient::ConvertDocumentApi.new
# input_file = File.new("non_csv.xlsx") # File | Input file to perform the operation on.
# begin
#   # Excel XLSX to CSV
#   result = api_instance.convert_document_xlsx_to_csv(input_file)
#   p result
# rescue CloudmersiveConvertApiClient::ApiError => e
#   puts "Exception when calling ConvertDocumentApi->convert_document_xlsx_to_csv: #{e}"
# end

require 'csv-xlsx-converter'
