# Question 20
# Your team is asked to refactor some legacy code used by the marketing team. One of the requirements of the project is to change the implementation from using basic looping structures to using iterative methods instead.
# 
# Sample data:
# 
# mailing_campaign_leads = [
#   {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
#   {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
#   {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
#   {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
# ]

# The team comes up with four options to replace the legacy code, which you then discuss during a code review. Select all the options which replicate the functionality of the legacy code.

# Legacy code:

mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  lead[:name] = names.map { |name| name.capitalize }.join(' ')
end

p mailing_campaign_leads
# => [{:name=>"Emma Lopez", :email=>"emma.lopez@some_mail.com", :days_since_login=>423, :mailing_list=>true}, {:name=>"Mike Richards", :email=>"michael.richards@some_mail.com", :days_since_login=>23, :mailing_list=>false}, {:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

usable_leads = mailing_campaign_leads.reject do |lead|
  # last_login = lead[:days_since_login]
  # subscribed_to_list = lead[:mailing_list]
  # lead[:days_since_login] > 59 && !lead[:mailing_list]    # ← &&はおかしい。これだと全部falseになる
  lead[:days_since_login] > 59 || !lead[:mailing_list]
end

p usable_leads
# => {:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]
