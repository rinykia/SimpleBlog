class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :articles

  ROLES = %w[author admin]

  # Проверка на наличие пользователей.
  # Если ты первый, то удача повернулась к тебе лицом и ты становишься админом!! Та-да!
  before_create do
    if User.first.nil?
      self.role = 'admin'
    end
  end

end
