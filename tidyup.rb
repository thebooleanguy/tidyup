# A program to sort your downloads folder

dirName = ARGV[0].to_s


unless dirName.empty?
  Dir.chdir dirName
end

compressed_files = Dir.glob "*.{zip,rar,7z,tgz,gzip}"
video_files = Dir.glob "*.{mp4,mkv,avi}"
image_files = Dir.glob "*.{png,bmp,svg,jpeg,jpg}"

#puts compressed_files
#puts video_files
puts image_files
