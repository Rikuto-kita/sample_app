# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at https://49208b26c971407ba434e6c65253c644.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer/account_activation.html?locale=en
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at https://49208b26c971407ba434e6c65253c644.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer/password_reset.html?locale=en
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end

end
