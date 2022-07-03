class String
  def is_audio
    self.match?(/^[a-zA-Z]+(\.mp3|\.flac|\.alac|\.aac)$/)
  end
  
  def is_img
    self.match?(/^[a-zA-Z]+(\.jpg|\.jpeg|\.png|\.bmp|\.gif)/)
  end
end

p "Nothing Else Matters.mp3".is_audio#, false , "Expected false" ) 
p "NothingElseMatters.mp3".is_audio#, true, "Expected true" )
p "DaftPunk.FLAC".is_audio#, false, "Expected false" )
p "DaftPunk.flac".is_audio#, true, "Expected true" )
p "AmonTobin.aac".is_audio#, true, "Expected true" )
p " Amon Tobin.alac".is_audio#, false, "Expected false" )
p "tobin.alac".is_audio#, true, "Expected true" )
puts 

p 'Q_F.mp3'.is_audio

# Are you a file extension master? Let's find out by checking if Bill's files are images or audio files. 
# Please use regex if available natively for your language.

# You will create 2 string methods:

# isAudio/is_audio, matching 1 or + uppercase/lowercase letter(s) (combination possible), with the extension .mp3, .flac, .alac, or .aac.

# isImage/is_image, matching 1 or + uppercase/lowercase letter(s) (combination possible), with the extension .jpg, .jpeg, .png, .bmp, or .gif.

# Note that this is not a generic image/audio files checker. It's meant to be a test for Bill's files only. 
# Bill doesn't like punctuation. He doesn't like numbers, neither. Thus, his filenames are letter-only

# Rules

# It should return true or false, simply.
# File extensions should consist of lowercase letters and numbers only.
# File names should consist of letters only (uppercase, lowercase, or both)