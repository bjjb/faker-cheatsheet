require "faker/cheatsheet/version"
require 'faker'

module Faker
  module Cheatsheet
    def print_all(options = {})
      include_source = !!options[:source]
      puts "# Faker Cheatsheet"
      puts
      Faker.constants.each do |k|
        next if %i[Cheatsheet Config Base VERSION].include?(k)
        puts "## #{k}"
        puts
        c = Faker.const_get(k)
        c.methods(false).each do |m|
          puts "- #{m}"
          if include_source
            puts source(k, m)
          end
        end
        puts
      end
    end
    extend self
  end
end
