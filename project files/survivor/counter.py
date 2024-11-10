# import required module
import os
import re
# assign directory
directory = './'

directories = [x[0] for x in os.walk(directory)]
mediafiles = 0
files = 0
lines = 0
words = 0
characters = 0
# iterate over files in
# that directory
for dir in directories:
    for filename in os.listdir(dir):
        f = os.path.join(dir, filename)
        # checking if it is a media file
        if re.search(".png",f) or re.search(".wav",f) or re.search(".mp3",f) or re.search(".jpeg",f):
            mediafiles+=1
        # checking if it is a file
        if (re.search(".py$",f) or re.search(".html$",f) or re.search(".js$",f) or re.search(".php$",f) or re.search(".sh$",f) or re.search(".css$",f) or re.search(".bat$",f) or re.search(".gml$",f)) and os.path.isfile(f):
            with open(f) as fp:
                files+=1
                array=fp.readlines()
                lines+=len(array)
                for line in array:
                    words+=len(re.split(" |\.|\(",line))
                    for char in line:
                        characters+=1
print("\n  🦈    🦈    🦈    🦈    🦈    🦈    🦈")
print("  ______________________________________\n |======================================| \n||                                      ||")
print("||   Game has: " +str(mediafiles)+ " media files   ||\n||                                      ||")
print("||======================================||")
print("||                                      ||")
print("||    Game has: " +str(files)+ " code files     ||\n||                                      ||")
print("||======================================||")
print("||                                      ||")
print("||     Game has: " +str(lines)+ " lines      ||\n||                                      ||")
print("||======================================||")
print("||                                      ||\n||     Game has: " +str(words)+ " words      ||\n||                                      ||")
print("||======================================||")
print("||                                      ||\n||  Game has: " +str(characters)+ " characters   ||\n||                                      ||")
print(" |======================================| \n  ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾")
