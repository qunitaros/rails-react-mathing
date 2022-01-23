class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::ApplicationController
  private

  def sign_up_params
    params.permit(:email, :password, :password_confirmation, :name, :image, :gender, :prefecture, :birthday)
  end
end

# curl -F "email=imagetest@example.com" -F "password=password" -F "password_confirmation=password" -F "name=imagetest" -F "gender=0" -F "birthday=2000-01-01" -F "prefecture=13" -F "profile=画像テストです" -F "image=@sample.png" http://localhost:3000/api/v1/auth