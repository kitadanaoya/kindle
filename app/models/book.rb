class Book < ApplicationRecord
	# book_id : int
	# title : string
	# subtitle : string
	# author : string
	# genre : string
	# published_date : datetime
	# description : text

	def self.create_from_book_title(book_title)

		# require 'uri'
		book_q_param = URI.encode_www_form({ q: ''})
		# params = URI.encode_www_form({ q: 'こうすれば必ず人は動く'})

		# google book api
		uri = URI.parse("https://www.googleapis.com/books/v1/voumes?#{book_q_param}"))
		books_json = Net::HTTP.get(uri)

    books_param = JSON.parse(books_json)

    top_book_param = books_param["items"][0]["volumeInfo"]

    new_book = self.new
		new_book.title = top_book_param['title']
		new_book.subtitle = top_book_param['subtitle']
		new_book.author = top_book_param['authors']
		new_book.genre = nil
		new_book.published_date = new_book['publishedDate']
		new_book.description = new_book['description']
		new_book.save

  end
end

