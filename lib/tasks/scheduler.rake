
desc "This task is called by the Heroku scheduler add-on"
task :import_data => :environment do
    puts "Begin Importing Data..."
    require 'import_data.rb'
    iSFtoPGTask =  ImportSalesforceToPG.new
    iSFtoPGTask.importEverything('admin@30df.org','Merc@1234hqqGL45XtSQcaTxxYAUEk9YWo','00DE0000000II8g','')
    puts "done."
end

task :import_sadunya_data => :environment do
    puts "Begin Importing Sadunyas Data..."
    require 'unmanaged/import_data_from_unmanaged.rb'
    iUnmanagedSFtoPGTask =  ImportUnmanagedSalesforceToPG.new
    iUnmanagedSFtoPGTask.importEverything('snehal.fulzele@91demo.com','mfiflex@1234oaV1kCNGCxoj65A0oSbfqZ0lQ','00Dd0000000bxQO',' where lastmodifieddate > LAST_MONTH')
    puts "done."
end