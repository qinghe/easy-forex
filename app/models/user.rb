class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  has_many :exchanges,  foreign_key: 'seller_id',  dependent: :destroy
  has_many :reviews,  foreign_key: 'reviewed_user_id',  dependent: :destroy
  has_many :reviews,  foreign_key: 'reviewer_user_id',  dependent: :destroy
  has_many :bookings, foreign_key: 'buyer_id', dependent: :destroy

  validates_presence_of :first_name

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  def self.find_for_facebook_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.picture = auth.info.image.gsub("http","https")
      user.token = auth.credentials.token
      user.token_expiry = Time.at(auth.credentials.expires_at)
    end

  end

end
