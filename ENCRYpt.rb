#imports
require 'faraday'
require 'json'
require 'colorize'
require_relative "logo"
system('clear')
puts Utils::BANNER
#class
class MD5
  #for loop
  loop do

        #Tool
        print "[#{'?'.colorize(:yellow)}] Enter hash MD5: "
        hash = gets.chomp

        hash_md5 = Faraday.get("https://api.hashify.net/hash/md5/hex?value=#{hash}")
        md5_cmd = JSON.parse(hash_md5.body)
        puts "MD5 : #{md5_cmd['Digest']}"

     #end
  end
end