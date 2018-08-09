require "zip"

$chmFile = File.absolute_path("sdk.chm")
$website = File.absolute_path("docfx_project/_site") + "/"

task :default => ["docfx"]

task :chm do
  batchFile = File.absolute_path("build-chm.bat")
	system(batchFile)
end

task :docfx do
  sh "docfx docfx_project\docfx.json --serve"
end

namespace :package do
  abort 'run "rake:chm" to build CHM file before packaging release' unless File.exist? $chmFile
  abort 'run "rake:docfx" to build website before packaging release' unless File.exist? $website

  $target = 'artifacts'
  task :release => [
    :zipSite,
    :copyChm
  ]
end

task :copyChm do
  chm = File.absolute_path("#{$target}/sdk.#{$version}.chm")
  FileUtils.cp $chmFile, chm, :verbose => true
end

task :zipSite do

  Rake::Task['getVersion'].invoke
  Rake::Task['createFolder'].invoke

  zipFile = File.absolute_path("#{$target}/sdkHtml.#{$version}.zip")

  FileUtils.rm_f zipFile

  puts "Packaging #{$website} for release into #{zipFile}"

  Zip::File.open(zipFile, Zip::File::CREATE) do |zipfile|
    Dir.glob(File.join($website, '**', '*'), File::FNM_DOTMATCH)
      .each do |file|
        zipfile.add(file.sub($website, ""), file)
      end
  end
end

task :createFolder do
  FileUtils.rm_rf $target
  FileUtils.mkdir_p $target
end

task :getVersion do
  File.foreach("VERSION.txt").with_index do |line, line_num|
    if line_num == 0
      $version = line.match(/^[\w\s_=]+["]([\w\.]+)"/).captures[0]
    end
  end
end
