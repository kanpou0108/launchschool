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

mailing_campaign_leads.map do |lead|
  lead[:name].capitalize!
end

p mailing_campaign_leads
# => [{:name=>"Emma lopez", :email=>"emma.lopez@some_mail.com", :days_since_login=>423, :mailing_list=>true}, {:name=>"Mike richards", :email=>"michael.richards@some_mail.com", :days_since_login=>23, :mailing_list=>false}, {:name=>"Jane williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, {:name=>"Ash patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

mailing_campaign_leads.select! do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end

p mailing_campaign_leads
# => [{:name=>"Jane williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, {:name=>"Ash patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]