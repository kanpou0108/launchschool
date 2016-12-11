# Launch School - an online school for developers
# https://launchschool.com/lessons/a0f3cd44/assignments/9e75343c

def test_method
  prompt('test message')
end

test_method           # second, try invoking "test_method" here

def prompt(message)
  Kernel.puts("=> #{message}")
end

# test_method           # first, try invoking "test_method" here