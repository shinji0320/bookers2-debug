class UserNotifierMailer < ApplicationMailer
    default :from => "***@gmail.com(送信元アドレス)"

    def send_signup_email
        @greeting = "Hi"
        mail( :to => "***@gmail.com(実験用の受信元アドレス)", :subject => "会員登録が完了しました。" )
    end
end
