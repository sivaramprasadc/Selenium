

def fib
  require 'net/http'
  require 'net/https'
  require 'json'
  puts "Hello world"
  
  uri = URI.parse("https://dictateapi-qa3.entradahealth.net/api/users/authenticate")
  
  data = {
    'UserName'=> "a@q.com",    
    'Password' => '111111',
    'DeviceId'=>'afd710c5c479386f47a7328b05842f5534972c0d',
    'PushNotificationDeviceToken'=>'',
    'OperatingSystemTypeId'=>'1'
  }
  
  header = {'VersionNumber' => '2', 'UserAgent' => 'iPhone 9.1.2'}
  
  https = Net::HTTP.new(uri.host,uri.port)
  https.read_timeout = 500
  https.use_ssl = true
  req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
  #req.initialize_http_header({'VersionNumber' => '2', 'UserAgent' => 'iPhone 9.1.2'})
  req.body = data.to_json
  res = https.request(req)
  
  puts "Response #{res.code} #{res.message}: #{res.body}"
  
  str=res.body
  arr=str.split(",")
  st= arr[arr.size-3]
  
  sessionToken=st.split(":")[1]
  sessionToken[0]=''
  sessionToken[sessionToken.length-1]=''
  puts sessionToken
  
   
  
  header = {
   'sessionToken' => sessionToken,
   'dictator' => '3106',
   'UserAgent' => 'iPhone 9.1.2',
   'VersionNumber' => '2'
  }
  
  puts header
  str=(Time.now).to_s.gsub! /[^0-9A-Za-z]/, ""
  str[str.length-1]=''
  data1 = {
    'AppointmentDate'=> 0,    
    'PatientID' => "5156674",  
    'State'=>0,
    'ScheduleID'=>"NULL"
  }
  puts data1
  uri = URI.parse("https://dictateapi-qa3.entradahealth.net/api/encounter")
  https = Net::HTTP.new(uri.host,uri.port)
  https.read_timeout = 500
  https.use_ssl = true
  req = Net::HTTP::Post.new(uri.path, header)
  req.body = data1.to_json
  #req.body = "[ #{data} ]"
  res = https.request(req)
  
  puts "Encounter API Response #{res.code} #{res.message}: #{res.body}"
  str=res.body
  arr=str.split(",")
  id=arr[1].split(":")[1]
  #fid=id[id.length-1]
  
  data4 = {
   'id'=> id,    
    'ReferringPhysicianID' => 'NULL',
    'QueueID'=>3174,
    'State'=>100,
    'IsStat'=>'false',
    'JobTypeID'=>1029
  }
  
    
  puts data4
  str= "https://dictateapi-qa3.entradahealth.net/api/encounter/"+id+"/job" 
  puts str
  uri = URI.parse(str)
  https = Net::HTTP.new(uri.host,uri.port)
  https.read_timeout = 500
  https.use_ssl = true
  req = Net::HTTP::Post.new(uri.path, header)
  req.body = data4.to_json
  ##req.body = "[ #{data} ]"
  res = https.request(req)
  
  puts "Final Response #{res.code} #{res.message}: #{res.body}"
end

fib