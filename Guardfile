# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec,
  cli: "--color --format=documentation --profile",
  all_after_pass: true,
  all_on_start: true do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb') { "spec" }

  watch(%r{^spec/support/(.+)\.rb$}) { "spec" }
end

