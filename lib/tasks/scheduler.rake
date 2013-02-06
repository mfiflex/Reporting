require 'time'
desc "This task is called by the Heroku scheduler add-on"
task :import_data => :environment do
    puts "Begin Importing Data..."
    require 'import_data.rb'
    iSFtoPGTask =  ImportSalesforceToPG.new
    databaseConfig =  Rails.configuration.database_configuration
    conn = PG.connect(databaseConfig[Rails.env]["host"], databaseConfig[Rails.env]["port"], '','',databaseConfig[Rails.env]["database"], databaseConfig[Rails.env]["username"],databaseConfig[Rails.env]["password"] )
    
    check_status_table = conn.exec("select * from pg_tables where tablename='mfiforce__last_fetch_date_c'")
    puts check_status_table
    if (check_status_table.ntuples == 0)
    puts("nil is here")
    iSFtoPGTask.importEverything('admin@30df.org','Merc@1234bhBAA23eAUxkvupbnJ6riKzkY','Merc@1234','bhBAA23eAUxkvupbnJ6riKzkY','00DE0000000II8g',conn,'')
    puts "done."
    else
    date_res = conn.exec('select lastfetchStartDate from mfiforce__last_fetch_date_c order by lastfetchStartDate desc limit 1')  
    last_fetched_date = date_res[0]['lastfetchstartdate']
    puts last_fetched_date
    last_fetched_date_conv = Time.parse(last_fetched_date).getutc.iso8601
    puts "i am here"
    puts last_fetched_date_conv
    iSFtoPGTask.importEverything('admin@30df.org','Merc@1234bhBAA23eAUxkvupbnJ6riKzkY','Merc@1234','bhBAA23eAUxkvupbnJ6riKzkY','00DE0000000II8g',conn,' where lastmodifieddate > '+last_fetched_date_conv)
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

