require 'yaml'

# LANGUAGE = 'en'
LANGUAGE = 'es'

# MESSAGES = YAML.load_file('calculator_messages.yml')
MESSAGES = YAML.load_file('calculator_messages_02.yml')

# p MESSAGES

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)   # make sure the "messages" method is declared above this line
  Kernel.puts("=> #{message}")
end

# now you can just do:
prompt('welcome')
prompt('valid_name')