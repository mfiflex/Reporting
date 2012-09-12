desc "This task is called by the Heroku scheduler add-on"
task :import_data => :environment do
    puts "Begin Importing Data..."
    require 'import_data.rb'
    iSFtoPGTask =  ImportSalesforceToPG.new
    iSFtoPGTask.importEverything('admin@30df.org','Merc1243HGRcayiE38dzluu4LkACcfOjy','TSFOrgId')
    puts "done."
end
