batchFile = File.absolute_path("build-chm.bat")

task :default => ["buildHelpFile"]

task :buildHelpFile do 
	system(batchFile)
end
