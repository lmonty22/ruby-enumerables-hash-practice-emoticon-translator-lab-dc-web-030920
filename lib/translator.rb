# require modules here

require 'yaml'

def load_library(filepath)
emoticons = YAML.load_file(filepath)

  hash = {"get_meaning"=> {},
  "get_emoticon"=> {}
  }
  emoticons.each do |key,value|
      hash["get_meaning"][value[1]] = key
      hash["get_emoticon"][value[0]] = value[1]
    end 
  hash
end 

def get_japanese_emoticon(file_path, emoticon)
result = load_library(file_path)['get_emoticon'][emoticon]
  result ? result : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
result = load_library(file_path)['get_meaning'][emoticon]
  result ? result : "Sorry, that emoticon was not found"
end

# def get_japanese_emoticon(filepath, eng_emoticon)
# emoticons = load_library(filepath)
# result = "Sorry, that emoticon was not found"
#   emoticons["get_emoticon"].each do |key,value|
#     result = value if key == eng_emoticon
#   end
# result
# end

# def get_english_meaning(filepath, jap_emoticon)
# emoticons = load_library(filepath)
# result = "Sorry, that emoticon was not found"
#   emoticons["get_meaning"].each do |key,value|
#     result = value if key == jap_emoticon
#   end
# result 
# end

