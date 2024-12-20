# A program to organize your downloads directory by file type

# Change working directory if argument provided
dir_name = ARGV[0].to_s
unless dir_name.empty?
  Dir.chdir dir_name
end

# Detect files based on extension
compressed_files = Dir.glob "*.{zip,rar,7z,tgz,gzip}"
video_files = Dir.glob "*.{mp4,mkv,avi}"
image_files = Dir.glob "*.{png,bmp,svg,jpeg,jpg}"



# A function to move the files to our new directory



# For Debugging
#puts compressed_files
#puts video_files
#puts image_files


