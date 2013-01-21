desc "This task is called by the Heroku scheduler add-on"
task :import_data => :environment do
    puts "Begin Importing Data..."
    require 'import_data.rb'
    iSFtoPGTask =  ImportSalesforceToPG.new
    databaseConfig =  Rails.configuration.database_configuration
    conn = PG.connect(databaseConfig[Rails.env]["host"], databaseConfig[Rails.env]["port"], '','',databaseConfig[Rails.env]["database"], databaseConfig[Rails.env]["username"],databaseConfig[Rails.env]["password"] )
    date_res = conn.exec('select lastfetchdate from mfiforce__last_fetch_date_c order by lastfetchDate desc limit 1')
    if (date_res.ntuples == 0)
    puts("nil is here")
    iSFtoPGTask.importEverything('admin@30df.org','Merc@1234bhBAA23eAUxkvupbnJ6riKzkY','00DE0000000II8g',conn,'')
    puts "done."
    else
    last_fetched_date = date_res[0]['lastfetchdate']
    puts "i am here"
    where_clause = ' where lastmodifieddate > ' + last_fetched_date
    puts where_clause
    iSFtoPGTask.importEverything('admin@30df.org','Merc@1234bhBAA23eAUxkvupbnJ6riKzkY','00DE0000000II8g',conn,where_clause)
    puts "done."        
    end
    
end

task :import_sadunya_data => :environment do
    puts "Begin Importing Sadunyas Data..."
    require 'unmanaged/import_data_from_unmanaged.rb'
    iUnmanagedSFtoPGTask =  ImportUnmanagedSalesforceToPG.new
    iUnmanagedSFtoPGTask.importEverything('snehal.fulzele@91demo.com','mfiflex@1234D3Z68dLKAKDsMCCATgAPYdwY','00Dd0000000bxQO',' where lastmodifieddate > LAST_MONTH')
    puts "done."
end

