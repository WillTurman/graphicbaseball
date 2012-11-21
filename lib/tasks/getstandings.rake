require 'open-uri'


desc "standings scrape"

task :standings => :environment do

for x in 1001..1004


plusminus = Array.new
plusminus [0..29] = 0



url = "http://espn.go.com/mlb/standings/_/date/2012#{x}"
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
doc.css("tr").each do |row|
	team = row.css("td:nth-child(1) a").inner_text
	wins = row.css("td:nth-child(2)").inner_text.to_i
	losses = row.css("td:nth-child(3)").inner_text.to_i
	record = wins - losses
	
	case team 
		when "Arizona"
  		plusminus[0] = record
  		
		when "Atlanta"
  		plusminus[1] = record
  		
  		when "Baltimore"
  		plusminus[2] = record
  		
  		when "Boston"
  		plusminus[3] = record
  		
  		when "Chicago Cubs"
  		plusminus[4] = record
  		
  		when "Chicago Sox"
  		plusminus[5] = record
  		
  		when "Cincinnati"
  		plusminus[6] = record
		
		when "Cleveland"
  		plusminus[7] = record
  		
  		when "Colorado"
  		plusminus[8] = record
  		
  		when "Detroit"
  		plusminus[9] = record
  		
  		when "Miami"
  		plusminus[10] = record
  		
  		when "Houston"
  		plusminus[11] = record
  		
  		when "Kansas City"
  		plusminus[12] = record
  		
  		when "LA Angels"
  		plusminus[13] = record
  		
  		when "LA Dodgers"
  		plusminus[14] = record
  		
  		when "Milwaukee"
  		plusminus[15] = record
  		
  		when "Minnesota"
  		plusminus[16] = record
  		
  		when "NY Mets"
  		plusminus[17] = record
  		
  		when "NY Yankees"
  		plusminus[18] = record
  		
  		when "Oakland"
  		plusminus[19] = record
  		
  		when "Philadelphia"
  		plusminus[20] = record
  		
  		when "Pittsburgh"
  		plusminus[21] = record
  		
  		when "San Diego"
  		plusminus[22] = record
  		
  		when "San Francisco"
  		plusminus[23] = record
  		
  		when "Seattle"
  		plusminus[24] = record
  		
  		when "St. Louis"
  		plusminus[25] = record
  		
  		when "Tampa Bay"
  		plusminus[26] = record
  		
  		when "Texas"
  		plusminus[27] = record
  		
  		when "Toronto"
  		plusminus[28] = record
  		
  		when "Washington"
  		plusminus[29] = record
  		end	
    
end    
    

s = Standing12.new( :arizona => plusminus[0], :atlanta => plusminus[1], :baltimore => plusminus[2], :boston => plusminus[3], :chicagocubs => plusminus[4], :chicagosox => plusminus[5], :cincinnati => plusminus[6], :cleveland => plusminus[7], :colorado => plusminus[8], :detroit => plusminus[9], :miami => plusminus[10], :houston => plusminus[11], :kansascity => plusminus[12], :laangels => plusminus[13], :ladodgers => plusminus[14], :milwaukee => plusminus[15], :minnesota => plusminus[16], :nymets => plusminus[17], :nyyankees => plusminus[18], :oakland => plusminus[19], :philadelphia => plusminus[20], :pittsburgh => plusminus[21], :sandiego => plusminus[22], :sanfrancisco => plusminus[23], :seattle => plusminus[24], :stlouis => plusminus[25], :tampabay => plusminus[26], :texas => plusminus[27], :toronto => plusminus[28], :washington => plusminus[29])
s.save
	
puts x

end
end



task :firststanding => :environment do

    

s = Standing12.new( :arizona => 0, :atlanta => 0, :baltimore => 0, :boston => 0, :chicagocubs => 0, :chicagosox => 0, :cincinnati => 0, :cleveland => 0, :colorado => 0, :detroit => 0, :miami => 0, :houston => 0, :kansascity => 0, :laangels => 0, :ladodgers => 0, :milwaukee => 0, :minnesota => 0, :nymets => 0, :nyyankees => 0, :oakland => 0, :philadelphia => 0, :pittsburgh => 0, :sandiego => 0, :sanfrancisco => 0, :seattle => 0, :stlouis => 0, :tampabay => 0, :texas => 0, :toronto => 0, :washington => 0)
s.save
	
puts s

end






