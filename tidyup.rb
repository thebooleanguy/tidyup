# A program to organize your downloads directory by file type

require 'fileutils'

# Change working directory if argument provided
dir_name = ARGV[0].to_s
unless dir_name.empty?
  Dir.chdir dir_name
end

# Detect files based on extension
compressed_files = Dir.glob "*.{zip,rar,7z,tgz,gzip,img}"
videos = Dir.glob "*.{mp4,mkv,avi}"
images = Dir.glob "*.{png,bmp,svg,jpeg,jpg,psd,webp}"
documents = Dir.glob "*.{pdf,docx,doc,txt,odt,rtf,csv,xlsx,pptx,html}"
programs = Dir.glob "*.{py,exe,sh,bat,rb}"



# A function to move the files to our new directory
def move_files(files, file_type)
  
  # Get a string representation for our new directory
  new_dir = Dir.pwd.to_s + "/" + file_type

  # Create a new directory for our files
  unless Dir.exist?(new_dir)
    Dir.mkdir new_dir
  end

  # Move each file in our array to the new directory
  FileUtils.mv(files, new_dir, secure: true)

end



move_files(compressed_files, "Compressed")
move_files(videos, "Videos")
move_files(images, "Images")
move_files(documents, "Documents")
move_files(programs, "Programs")

# Move remaining files
other_files = Dir.glob("*").reject{ |f| f['Videos'] || f['Images'] || f['Compressed'] || f['Documents'] || f['Programs'] || f['Other']}
move_files(other_files, "Other")


# For Debugging
#puts compressed_files
#puts video_files
#puts image_files


