# Ruby console commands to interact with MongoDB


## Connect to Mongo
----------------
require 'mongo'
Mongo::Logger.logger.level = ::Logger::ERROR
# your database name: myapp_development


db = Mongo::Client.new('mongodb://localhost:27017')
db = db.use('countries')

## Find
----
db[:countries].find.first.to_a
db[:countries].find(:code => "US").to_a
db[:countries].find(:code => "US").count

## Insert
------
db[:countries].insert_one(:code => 'EL', :name => 'Espinete Land')
db[:countries].insert_many(
  {:code => 'E2', :name => 'Espinete2 Land'},
  {:code => '23', :name => 'Planet 23'}
  )

## Pretty printing, paging, projections
