def new_site(baseurl)
  r= Recurlysite.new baseurl
  r.open
  r
end

def new_session(baseurl,username,password)
 site = new_site baseurl
 site.login_page.login(username, password)
 site
end

def rand_string
  SecureRandom.hex[0..11]
end
