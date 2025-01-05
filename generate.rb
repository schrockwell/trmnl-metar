#! /usr/bin/env ruby

require 'json'
require 'open-uri'
require 'liquid'

if ARGV.length != 1
  puts "usage: generate.rb [icao]"
  exit 1
end

icao = ARGV[0]
url = "https://aviationweather.gov/api/data/metar?ids=#{icao}&format=geojson"
data = JSON.parse(URI.open(url).read)

templates_dir = File.join(__dir__, 'templates')

module CustomFilters
  def number_with_delimiter(input)
    input.to_s.reverse.scan(/.{1,3}/).join(',').reverse
  end
end

environment = Liquid::Environment.build do |env|
  env.file_system = Liquid::LocalFileSystem.new(templates_dir)
  env.register_filter(CustomFilters)
end

template = Liquid::Template.parse(File.read(File.join(templates_dir, 'index.liquid')), environment: environment)
File.write('_site/index.html', template.render(data))