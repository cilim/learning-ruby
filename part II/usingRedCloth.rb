require 'rubygems'
require 'redcloth'

r = RedCloth.new("this is a *test* of _using RedCloth_")
puts r.to_html

#IMPORTAN*: When installing a gem, if you get an error, like me, saying: "failed to build gem native extension", you have to run this command: "sudo yum install -y gcc ruby-devel libxml2 libxml2-devel libxslt libxslt-devel"