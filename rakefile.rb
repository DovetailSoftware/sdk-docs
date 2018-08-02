batchFile = File.absolute_path("build-chm.bat")

task :default => ["docfx"]

task :chm do
	system(batchFile)
end

task :docfx do
	sh 'docfx docfx_project\docfx.json --serve'
end
