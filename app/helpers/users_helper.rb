module UsersHelper
    
    def login(user)
        session[:user_id] = user.id
      end
      def gravatar_for(user)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
        
      end
      def remeber(user)
        user.remeber
        coockies.permanent.signed[:user_id]=user.id
        coockies.permanent[:remeber_token]= user.remeber_token
      end
      def current_user
        if (user_id= session[:user_id])
          @current_user || User.find_by(id:session[:user_id])
        elsif (user_id = cookies.signed[:user_id])
          @current_user || User.find_by(id: cookies.signed[:user_id])
          if user && user.authencated?(cookies[:remeber_token])
            login user
            @current_user = user
          end
        end
      end
      def logged_in?
        !current_user.nil?
      end
      def log_out
        
        session.delete(:user_id)
        @current_user = nil
      end
end
