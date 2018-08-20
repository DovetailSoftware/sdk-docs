require 'fileutils'
require 'zip'

$chmFile = File.absolute_path("sdk.chm")
$website = File.absolute_path("docfx_project/_site") + "/"
$docfxFolder = 'docfx'
$docfxExe = File.absolute_path("#{$docfxFolder}/docfx.exe")
$target = 'artifacts'

task :default => ['docfx']

task :chm do
  batchFile = File.absolute_path("build-chm.bat")
	system(batchFile)
end

task :docfx => [:unzipDocfx] do
  puts 'generating docfx website'
  sh "#{$docfxExe} docfx_project\\docfx.json --serve"
end

task :getDocfx do
  puts 'verifying docfx executable'
  if File.exist?($docfxExe)
    # skip download
  else
    puts 'fetching docfx executable'
    FileUtils.rm_rf $docfxFolder if File.exist? $docfxFolder
    FileUtils.mkdir_p $docfxFolder

    sh "curl -L https://github.com/dotnet/docfx/releases/download/v2.37.2/docfx.zip > docfx.zip"
  end
end

task :unzipDocfx do
  if File.exist?($docfxExe)
    # skip unzipping
  else
    puts 'unzipping docfx executable'
    if File.exist?($docfxFolder) then
      FileUtils.rm_rf $docfxFolder
    end

    zip_file = Zip::File.open('docfx.zip')
    zip_file.each do |file|
      f_path=File.join($docfxFolder, file.name)
      FileUtils.mkdir_p(File.dirname(f_path))
      zip_file.extract(file, f_path)
    end
  end
end

task :getVersion do
  File.foreach("VERSION.txt").with_index do |line, line_num|
    if line_num == 0
      $version = line.match(/^[\w\s_=]+["]([\w\.]+)"/).captures[0]
    end
  end
end

task :copyChm do
  chm = File.absolute_path("#{$target}/fcSDK.chm")
  FileUtils.cp $chmFile, chm, :verbose => true
end

task :zipSite do

  Rake::Task['getVersion'].invoke
  Rake::Task['createFolder'].invoke

  zipFile = File.absolute_path("#{$target}/sdkHtml.zip")

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
