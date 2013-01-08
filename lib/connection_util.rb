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
        
        #fieldStr = fieldList.map { |i| + i.to_s}.join(",")
        
        fieldList.each do |replace|
         replace.gsub!("'", "\\\\'")
        end
        puts fieldList        
        fieldStr = fieldList.map { |i| "'" + i.to_s + "'" }.join(",")
        fieldStr = fieldStr.gsub("''","null")
        puts fieldStr
        if(!salesforceOrgId.nil?)
            fieldStr = fieldStr + ",'" + salesforceOrgId + "'"
        end
        #conn.escape_string(fieldStr)
        #puts fieldStr
        insertScriptStr =  "insert into " + objectName + "(" + headerStr + ") values (" + fieldStr + ")"
               
        #arr = fieldStr.split(",")
        #arr_length = arr.length
        #puts arr_length
        #prep_values = ''
        #for i in 1..arr_length
        #   if i != arr_length
        #    prep_values = prep_values + "$" + i.to_s + ","    
        #   else
        #    prep_values = prep_values + "$" + i.to_s
        #   end
        #end
        #puts prep_values
        #teststr = "insert into " + objectName + "(" + headerStr + ") values (" + prep_values + ")"
        #puts teststr
        #conn.prepare("insertscriptstr", "insert into #{objectName} (#{headerStr}) values (#{prep_values})")  
        #conn.exec_prepared("insertscriptstr", arr)
        #conn.exec("DEALLOCATE insertscriptstr")        
        # Try inserting: If it doesn't insert then try to update
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
  
  def quote21313 (str)
    str.gsub(/'/,"\\\\'")
    return str
  end

end