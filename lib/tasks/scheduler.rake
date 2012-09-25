desc "This task is called by the Heroku scheduler add-on"
task :import_data => :environment do
    puts "Begin Importing Data..."
    require 'import_data.rb'
    iSFtoPGTask =  ImportSalesforceToPG.new
    iSFtoPGTask.importEverything('admin@30df.org','Merc12432v9GPaFCwqTHDoj4n5TnV0Vw9w','00DE0000000II8g','')
    puts "done."
end

task :import_sadunya_data => :environment do
    puts "Begin Importing Sadunyas Data..."
    require 'unmanaged/import_data_from_unmanaged.rb'
    iUnmanagedSFtoPGTask =  ImportUnmanagedSalesforceToPG.new
    iUnmanagedSFtoPGTask.importEverything('snehal.fulzele@91demo.com','mfiflex4321quRC8beUMWDkZsZKQA5RgCBx','00Dd0000000bxQO',' where lastmodifieddate > LAST_WEEK')
    puts "done."
end