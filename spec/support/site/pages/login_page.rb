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
