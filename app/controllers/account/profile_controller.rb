module Account
  class ProfileController < Account::Base
    include Pundit

    def edit
      @user = current_user
      # authorize @user
    end

    def update
      @user = current_user
      # authorize @user

      @user.update(user_params)

      flash[:notice] = "Merci ! Vos modifications ont bien été prises en compte"
      redirect_to edit_account_profile_path(@user)
    end

    private

    def user_params
      params.require(:user).permit(:first_name)
    end
  end
end
