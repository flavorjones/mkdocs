#! /usr/bin/env ruby

require "bundler/inline"

gemfile do
  gem "nokogiri"
end

require "nokogiri"
require "json"

html_path = ARGV[0]

output = {"path" => html_path}
output["title"] = "My Title"
output["sections"] = []

puts output.to_json
