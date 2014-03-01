if Rails.env.development?
  EmailPreview.register 'Signup' do
    user = JohnHenryUser.new email: 'johnny.cage@gmail.com'
    JohnHenryMailer.signup(user)
  end
end
