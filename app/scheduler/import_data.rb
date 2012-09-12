require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'pg'
require "action_mailer"

class ImportSalesforceToPG
  include MFiFlexConstants
  include Databasedotcom::Rails::Controller
    
  def importEverything(salesforceUsername,salesforcePassword,salesforceOrgId)
    #Read config in the caller code
    config = YAML.load_file(File.join(::Rails.root, 'config', 'databasedotcom.yml'))    
    #get Connection
    #conn = PG.connect('localhost', '5432', '','','mfiforce', 'postgres','' )
    databaseConfig =  Rails.configuration.database_configuration
    conn = PG.connect(databaseConfig[Rails.env]["host"], databaseConfig[Rails.env]["port"], '','',databaseConfig[Rails.env]["database"], databaseConfig[Rails.env]["username"],databaseConfig[Rails.env]["password"] )
    
    importC = ImportClient.new
    # importC.import(config[:username],config[:password],conn)
    # Loading config this way is not applicable for salesforcE_bulk gem.
    # Might need to add logic to read data from multiple salesforce instances 
    #TODO read salesforce user/password info from a config file
    #importC.import('admin@30df.org','Merc1243HGRcayiE38dzluu4LkACcfOjy',conn)
    importC.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
      
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('snehal.fulzele@gmail.com','MFiFlex could not import data today. Error message: ' + e.message).deliver
  end
  
end
