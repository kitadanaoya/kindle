class Highlight < ApplicationRecord
	belongs_to :book
	belongs_to :user
	has_many :likes
	#自分にlikeしたユーザを複数持つ
	has_many :liked_users, through: :likes, source: :user

	validates :content, uniqueness: true 

		def self.create_from_highlights_text(highlights_text)
  	# new_highlight = self.new
		# new_highlight.content = highlight_text
		# new_highlight.save

		split_txt = highlights_text.delete(' ').split(' ')
		book_title = split_txt[1]
		book_author = split_txt[2]

		Book.create_from_book_title(book_title)
		book = Book.find_by(title: book_title)

		split_txt.each.with_index do |txt, idx|
			if txt.include?('色のハイライト') then
				new_highlight = self.new
				new_highlight.content = split_txt[idx+1]
				new_highlight.book_id = book.id
			  new_highlight.save
			end
		end

  end
end