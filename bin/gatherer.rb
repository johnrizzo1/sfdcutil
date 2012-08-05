require 'nokogiri'
require 'open-uri'

html_doc = Nokogiri::HTML(open('http://trust.salesforce.com/status-data/status.jsp'))

instances = Array.new
raw_instances = html_doc.css('table#instanceTable > tbody > tr')
raw_status = html_doc.css('table#instanceTable > tbody > tr > td > img')

(1..raw_instances.length - 4).each do |x|
  instances << { :instance => raw_instances[x].content.to_s.strip,
                 :status => raw_status[x-1].attribute('alt').to_s }
end

instances.each do |x|
  puts sprintf("%12s %s", x[:instance], x[:status])
end
