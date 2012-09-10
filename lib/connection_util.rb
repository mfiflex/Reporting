class ConnectionUtil
  @conn
  def getConnection
    if @conn == nil
      @conn = PG.connect('localhost', '5432', '','','mfiforce', 'postgres','' )
    end
    return @conn
  end
end