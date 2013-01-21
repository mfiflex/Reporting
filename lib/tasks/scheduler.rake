desc "This task is called by the Heroku scheduler add-on"
task :import_data => :environment do
    puts "Begin Importing Data..."
    require 'import_data.rb'
    iSFtoPGTask =  ImportSalesforceToPG.new
    databaseConfig =  Rails.configuration.database_configuration
    conn = PG.connect(databaseConfig[Rails.env]["host"], databaseConfig[Rails.env]["port"], '','',databaseConfig[Rails.env]["database"], databaseConfig[Rails.env]["username"],databaseConfig[Rails.env]["password"] )
    last_fetch_date = conn.exec('select lastfetchdate from mfiforce__last_fetch_date_c order by lastfetchDate desc limit 1')
    puts last_fetch_date
    if (last_fetch_date.ntuples == 0)
      puts("nil is here")
    iSFtoPGTask.importEverything('admin@30df.org','Merc@1234bhBAA23eAUxkvupbnJ6riKzkY','00DE0000000II8g',conn,'')
    puts "done."
    else
      puts "i am here"
    iSFtoPGTask.importEverything('admin@30df.org','Merc@1234bhBAA23eAUxkvupbnJ6riKzkY','00DE0000000II8g',conn,' where lastmodifieddate > last_fetched_date')
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

