BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  # BLOCKS.none? { |block| up_string.count(block) >= 2 }
  BLOCKS.each { |block| p up_string.count(block) }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# ↓result
# 1
# 0
# 0
# 1
# 1
# 1
# 0
# 0
# 0
# 1
# 0
# 0
# 0
# false
# 1
# 0
# 0
# 1
# 0
# 1
# 0
# 0
# 0
# 2   <= "BUTCH".count("HU")
# 0
# 0
# 0
# false
# 0
# 0
# 0
# 0
# 0
# 1
# 1
# 1
# 1
# 0
# 0
# 0
# 0
# false
