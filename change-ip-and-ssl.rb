require 'yaml'

puts 'NOT YET TESTED'

oldyml = ARGV[0]
newyml = ARGV[1]
oldip = ARGV[2]
newip = ARGV[3]
newkey = ARGV[4]
newcrt = ARGV[5]

newkeyfile = File.open(newkey, "rb" )
newkeycontent = newkeyfile.read
newkeyfile.close()

newcrtfile = File.open(newcrt, "rb" )
newcrtcontent = newcrtfile.read
newcrtfile.close()

yml = YAML.load_file oldyml
# 01
puts "01"
puts yml["jobs"][1]["networks"][0]["static_ips"][0]
yml["jobs"][1]["networks"][0]["static_ips"][0].sub! oldip,newip
puts yml["jobs"][1]["networks"][0]["static_ips"][0]
# 02
puts "02"
puts yml["properties"]["app_domains"][0]
yml["properties"]["app_domains"][0].sub! oldip,newip
puts yml["properties"]["app_domains"][0]
# 03
puts "03"
puts yml["properties"]["cc"]["srv_api_uri"]
yml["properties"]["cc"]["srv_api_uri"].sub! oldip,newip
puts yml["properties"]["cc"]["srv_api_uri"]
# 04
puts "04"
puts yml["properties"]["domain"]
yml["properties"]["domain"].sub! oldip,newip
puts yml["properties"]["domain"]
# 05
puts "05"
puts yml["properties"]["hm9000"]["url"]
yml["properties"]["hm9000"]["url"].sub! oldip,newip
puts yml["properties"]["hm9000"]["url"]
# 06
puts "06"
puts yml["properties"]["login"]["links"]["home"]
yml["properties"]["login"]["links"]["home"].sub! oldip,newip
puts yml["properties"]["login"]["links"]["home"]
# 07
puts "07"
puts yml["properties"]["login"]["links"]["passwd"]
yml["properties"]["login"]["links"]["passwd"].sub! oldip,newip
puts yml["properties"]["login"]["links"]["passwd"]
# 08
puts "08"
puts yml["properties"]["system_domain"]
yml["properties"]["system_domain"].sub! oldip,newip
puts yml["properties"]["system_domain"]
# 09
puts "09"
puts yml["properties"]["uaa"]["clients"]["app-direct"]["redirect-uri"]
yml["properties"]["uaa"]["clients"]["app-direct"]["redirect-uri"].sub! oldip,newip
puts yml["properties"]["uaa"]["clients"]["app-direct"]["redirect-uri"]
# 10
puts "10"
puts yml["properties"]["uaa"]["clients"]["developer_console"]["redirect-uri"]
yml["properties"]["uaa"]["clients"]["developer_console"]["redirect-uri"].sub! oldip,newip
puts yml["properties"]["uaa"]["clients"]["developer_console"]["redirect-uri"]
# 11
puts "11"
puts yml["properties"]["uaa"]["issuer"]
yml["properties"]["uaa"]["issuer"].sub! oldip,newip
puts yml["properties"]["uaa"]["issuer"]
# 12
puts "12"
puts yml["properties"]["uaa"]["clients"]["login"]["redirect-uri"]
yml["properties"]["uaa"]["clients"]["login"]["redirect-uri"].sub! oldip,newip
puts yml["properties"]["uaa"]["clients"]["login"]["redirect-uri"]
# 13
puts "13"
puts yml["properties"]["uaa"]["url"]
yml["properties"]["uaa"]["url"].sub! oldip,newip
puts yml["properties"]["uaa"]["url"]

# ssl
puts "ssl"
puts yml["jobs"][1]["properties"]["ha_proxy"]["ssl_pem"]
yml["jobs"][1]["properties"]["ha_proxy"]["ssl_pem"] = newcrtcontent + newkeycontent
puts yml["jobs"][1]["properties"]["ha_proxy"]["ssl_pem"]

File.open(newyml, 'w') { |f| YAML.dump(yml, f) }

