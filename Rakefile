#!/usr/bin/env rake
require "bundler/gem_tasks"

task :submodule do
  sh 'git submodule update --init' unless File.exist?('bootstrap-datetimepicker/README.md')
end

desc "Remove the vendor directory"
task :clean do
  rm_rf 'vendor'
end

desc "Generate the JavaScript assets"
task javascripts: :submodule do
  target_dir = "vendor/assets/javascripts"
  FileUtils.mkdir_p target_dir
  Rake.rake_output_message 'Generating javascripts'
  FileUtils.cp_r Dir["bootstrap-datetimepicker/src/js/*"], "vendor/assets/javascripts"
end

desc "Generate the CSS assets"
task stylesheets: :submodule do
  target_dir = "vendor/assets/stylesheets"
  mkdir_p target_dir
  Rake.rake_output_message 'Generating stylesheets'
  FileUtils.cp_r Dir["bootstrap-datetimepicker/src/less/*"], "vendor/assets/stylesheets"
end

desc "Clean and then generate everything (default)"
task assets: [:clean, :javascripts, :stylesheets]

task build: :assets

task default: :assets
