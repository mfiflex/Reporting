require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'pg'
require "action_mailer"

class ImportSalesforceToPG
  include MFiFlexConstants
  include Databasedotcom::Rails::Controller
    
  def importEverything
    #Read config in the caller code
    config = YAML.load_file(File.join(::Rails.root, 'config', 'databasedotcom.yml'))    
    #get Connection
    conn = PG.connect('localhost', '5432', '','','mfiforce', 'postgres','' )
    
    importC = ImportClient.new
    #importC.import(config[:username],config[:password],conn)
    puts config[:username]
    #TODO read salesforce user/password info from a config file
    importC.import('admin@30df.org','Merc1243HGRcayiE38dzluu4LkACcfOjy',conn)
      
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('snehal.fulzele@gmail.com','MFiFlex could not import data today. Error message: ' + e.message).deliver
  end
  
end
