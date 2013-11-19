# Organizing Nested Data

# I have a collection of Programming Languages.  
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

nu_languages = {}

languages.each do |style, language|
  language.each do |language_key, type|
    if nu_languages[language_key].nil?
        nu_languages[language_key] = {}
    end
    
    if nu_languages[language_key][:style].nil?
        nu_languages[language_key][:style] = [] 
    end

    nu_languages[language_key][:style] << style
      
    type.each do |type_key, actual_type|
      nu_languages[language_key][:type] = actual_type
    end
  end
end

puts nu_languages


#I would like you to reformat the nested structure to be of the following form

# {
#   :ruby => {
#     :style => [:oo],
#     :type => "dynamic"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "dynamic"
#   }
#   etc etc
# }