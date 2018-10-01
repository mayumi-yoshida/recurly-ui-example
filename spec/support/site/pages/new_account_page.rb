class NewAccountPage < Recurlysite::Page
    set_url "/accounts/new"
    text_field(:account_code, index: 0)
    button :submit, type: "submit"

    def account_new code
      account_code.set code
      submit.click
    end
end
