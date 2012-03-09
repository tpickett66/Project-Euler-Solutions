#!/usr/bin/env ruby
# encoding: UTF-8

# This script is used to bootstrap the bin directory with the shebang,
# encoding 'magic' comment, the problem description and a require line
# for any tools we have in the lib directory.

# If a particular problem already has a solution we won't attempt to
# download it again.

require 'rubygems'
require 'mechanize'
# require 'fileutils'

base_path = File.dirname(File.expand_path(__FILE__))

agent = Mechanize.new {|a| a.user_agent_alias = 'Mac Safari'}

magic_header = "#!/usr/bin/env ruby\n# encoding: UTF-8\n"
magic_header << "$:.unshift(File.dirname(__FILE__) + '/../../lib') unless $:.include?(File.dirname(__FILE__) + '/../../lib')\n\n"

req_stmt = "require 'pes'"

(1..374).each do |i|
  solution_name = "p#{i}"
  solution_path = File.join(solution_name)
  unless File.exists?(solution_path)
    puts "Solution file for #{i} not found!"
    print "Retriving description from server..."
    problem_description = ""
    agent.get("http://projecteuler.net/problem=#{i}") do |page|
      problem_description = page.at('.problem_content').text.strip.split(/\r?\n/)
    end
    puts "Done!"
    print "Generating file..."
    file = File.open(solution_path,"w+")
    file.print magic_header
    print "."
    problem_description.each do |desc|
      file.print "# #{desc}\n\n"
      print "."
    end
    file.print req_stmt
    print "."
    puts "Done!"
    print "Making executable..."
    file.chmod(0766)
    puts "Done!"
    file.close
  end
end
