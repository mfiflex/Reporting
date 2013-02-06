module MFiFlexConstants
  def replace_salesforce_types (node,node_types,field_type)
          node_types_str = (node_types.text).to_s
          node_str = (node.text).to_s
          node_types_str.gsub!("AutoNumber","varchar(32768)")
          node_types_str.gsub!("Formula","varchar(32768)")
          node_types_str.gsub!("Lookup","varchar(32768)")
          node_types_str.gsub!("MasterDetail","varchar(32768)")
          node_types_str.gsub!("Checkbox","boolean")
          node_types_str.gsub!("Currency","numeric(18,2)")
          node_types_str.gsub!("DateTime","timestamp without time zone")
          node_types_str.gsub!("Date","date")
          node_types_str.gsub!("Email","varchar(32768)")
          node_types_str.gsub!("Number","numeric(18,2)")
          node_types_str.gsub!("Percent","numeric(18,2)")
          node_types_str.gsub!("Phone","varchar(32768)")
          node_types_str.gsub!("MultiselectPicklist","varchar(32768)")
          node_types_str.gsub!("Picklist","varchar(32768)")
          node_types_str.gsub!("LongTextArea","varchar(32768)")
          node_types_str.gsub!("TextArea","varchar(32768)")
          node_types_str.gsub!("Text","varchar(32768)") 
          node_types_str.gsub!("Html","varchar(32768)")                  
          node_types_str.gsub!("Summary","varchar(32768)")  
          field_type = field_type + " " + "mfiforce__" + node.text + " " + node_types_str + ","
          return field_type
  end
  
  def alter_replace_salesforce_types(custom_field_value,custom_field_types_value_str,field_type)
          custom_field_types_value_str.gsub!("AutoNumber","varchar(32768)")
          custom_field_types_value_str.gsub!("Formula","varchar(32768)")
          custom_field_types_value_str.gsub!("Lookup","varchar(32768)")
          custom_field_types_value_str.gsub!("MasterDetail","varchar(32768)")
          custom_field_types_value_str.gsub!("Checkbox","boolean")
          custom_field_types_value_str.gsub!("Currency","numeric(18,2)")
          custom_field_types_value_str.gsub!("DateTime","timestamp without time zone")
          custom_field_types_value_str.gsub!("Date","date")
          custom_field_types_value_str.gsub!("Email","varchar(32768)")
          custom_field_types_value_str.gsub!("Number","numeric(18,2)")
          custom_field_types_value_str.gsub!("Percent","numeric(18,2)")
          custom_field_types_value_str.gsub!("Phone","varchar(32768)")
          custom_field_types_value_str.gsub!("MultiselectPicklist","varchar(32768)")
          custom_field_types_value_str.gsub!("Picklist","varchar(32768)")
          custom_field_types_value_str.gsub!("LongTextArea","varchar(32768)")
          custom_field_types_value_str.gsub!("TextArea","varchar(32768)")
          custom_field_types_value_str.gsub!("Text","varchar(32768)") 
          custom_field_types_value_str.gsub!("Summary","varchar(32768)")  
          custom_field_types_value_str.gsub!("Html","varchar(32768)")
          field_type = "mfiforce__" + custom_field_value.text.downcase + " " + custom_field_types_value_str
          return field_type
   end 
      
end