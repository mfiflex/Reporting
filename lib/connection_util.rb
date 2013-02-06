require 'mailer'

module ConnectionUtil
  
  def upsertRecords(objectName,queryResult,conn,salesforceOrgId)
    queryResult.each do |resultCSVRecord|
      begin
        headerList = resultCSVRecord.headers
        headerStr = headerList.map { |i| i.to_s }.join(",")
        
        if(!salesforceOrgId.nil?)
            headerStr = headerStr + "," + "salesforce_org_id"
        end
               
        fieldList = resultCSVRecord.fields
        fieldList.each do |replace|
         replace.gsub!("'", "\\\\'")
        end
                
        fieldStr = fieldList.map { |i| "'" + i.to_s + "'" }.join(",")
        fieldStr = fieldStr.gsub("''","null")
        
        if(!salesforceOrgId.nil?)
            fieldStr = fieldStr + ",'" + salesforceOrgId + "'"
        end
        insertScriptStr =  "insert into " + objectName + "(" + headerStr + ") values (" + fieldStr + ")"
        puts insertScriptStr
        insertResult = conn.exec(insertScriptStr)        
        
      rescue Exception => e  
        puts e.message  
        
        #logic to update
        updateStr = ""
        i = 0
          headerList.each do |hdr|
             #puts resultCSVRecord.field(i)
             if(resultCSVRecord.field(i).nil? or resultCSVRecord.field(i)=='')
               updateStr = updateStr + " " + hdr + " = NULL " 
             else
               updateStr = updateStr + " " + hdr + " = '" + resultCSVRecord.field(i) + "'"
             end  
              
             i = i+1  
             if(headerList.size != i)
              updateStr = updateStr + ","  
             end
          end
          
          updateScriptStr = "update " + objectName + " set " + updateStr + " where Id = '" + resultCSVRecord.field(0) + "'"
          updateResult = conn.exec(updateScriptStr)  
      end       
    end
    
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      messageToTechTeam = "MFiFlex could not import " + objectName + " today. Error message: " + e.message
      Mailer.mailTo('gaurav.singh@mfiflex.co.in',messageToTechTeam).deliver
  end  
    
end