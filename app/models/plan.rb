class Plan < ActiveRecord::Base
    has_many :memos
    validates :title, presence: { message: "제목을 써주세요"}
end
