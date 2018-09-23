require "insite"
require 'recurly'
require "securerandom"

def new_site
  r= Recurlysite.new "https://sophiamia.recurly.com/"
  r.open
  r
end

def rand_string
  SecureRandom.hex[0..11]
end

class Recurlysite
  include Insite
end

class LoginPage < Recurlysite::Page
    set_url "https://app.recurly.com/login"
    text_field :email, type: "email"
    text_field :password, type: "password"
    button :submit, type: "submit"

    def login(mail, pwd)
      email.set mail
      password.set pwd
      submit.click
    end
end

class AccountsPage < Recurlysite::Page
    set_url "/accounts"
end

class AccountNewPage < Recurlysite::Page
    set_url "/accounts/new"
    text_field(:account_code, index: 0)
    button :submit, type: "submit"

    def account_new code
      account_code.set code
      submit.click
    end
end

class AccountPage < Recurlysite::Page
    set_url "/accounts/{account_code}"
end
