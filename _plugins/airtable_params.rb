require 'json'
require 'airtable'
require 'active_support/all'
# require 'active_support/all'

# Pass in api key to client
@client = Airtable::Client.new("keyIUgMagLlIlIUU9")

# Pass in the app key and table name

items = ["projects", "people"]

items.each do |item|
    @table = @client.table("appBCGX7nTUCnaD6l", item)
    @records = @table.records(:limit => 100)

    File.open("_data/#{item}.json", "w") do |f|
        data = @records.map { |record| record.attributes }
        f.write(data.to_json)
    end
end

@publications_table = @client.table("appBCGX7nTUCnaD6l", "publications")
@publications_records = @publications_table.records(:sort => ["Year", :desc], :limit => 100)

# Change the filename here below but make sure it's in the _data folder.
File.open("_data/publications.json", "w") do |f|
    data = @publications_records.map { |record| record.attributes }
    f.write(data.to_json)
end
