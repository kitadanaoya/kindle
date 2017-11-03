class Highlight < ApplicationRecord


	validates :content, uniqueness: true 

		def self.create_from_highlights_text(highlights_text)
  #   new_highlight = self.new
		# new_highlight.content = highlight_text
		# new_highlight.save

		split_txt = highlights_text.delete(' ').split(' ')
		book_title = split_txt[1]
		book_author = split_txt[2]

		Book.create_from_book_title(book_title)

		split_txt.each.with_index do |txt, idx|
			if txt.include?('色のハイライト') then
				new_highlight = self.new
				new_highlight.content = split_txt[idx+1]
			  new_highlight.save
			end
		end

  end
end