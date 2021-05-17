require 'json'
require 'airtable'
require 'active_support/all'
# require 'active_support/all'

# Pass in api key to client
@client = Airtable::Client.new("keyIUgMagLlIlIUU9")

# Pass in the app key and table name

@table = @client.table("appBCGX7nTUCnaD6l", "table1")
@records = @table.records(:sort => ["Year", :desc], :limit => 100)

# Change the filename here below but make sure it's in the _data folder.
File.open("_data/airtable.json", "w") do |f|
    data = @records.map { |record| record.attributes }
    f.write(data.to_json)
end