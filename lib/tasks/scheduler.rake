desc "This task is called by the Heroku scheduler add-on"
task :import_data => :environment do
    puts "Begin Importing data..."
    require 'import_data.rb'
    iSFtoPGTask =  ImportSalesforceToPG.new
    iSFtoPGTask.importEverything
    puts "done."
end
