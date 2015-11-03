class President
	def self.all
		command = `psql -d postgres -c 'SELECT *
			FROM presidents;'`
		puts command
		
	end

	def self.find(n)
		idQuery = `psql -d postgres -c 'SELECT * FROM 
			presidents WHERE id = #{n};'`
		puts idQuery
	end

	def self.where
		cats = `psql -d postgres -c 'SELECT * FROM presidents WHERE home_state #{:st}';'`
		puts cats
	end

	def self.addMe
		addddd = `psql -d postgres -c 'SELECT SUM(president_number) FROM presidents;'`
		puts addddd
	end

	def self.last
		lastpres = `psql -d postgress -c 'SELECT LAST(:id) FROM presidents;'`
		puts lastpres
	end

	attr_accessor :name
	attr_accessor :took_office
	attr_accessor :left_office
	attr_accessor :birth_year
	attr_accessor :death_year
	attr_accessor :party
	attr_accessor :home_state
	attr_accessor :president_number

	# def Presidents.find()
	# 	puts President()
	# end

	# def self.sql_results_parser(command)

	# end

end
# puts President.find{:name => "George Washington"}

#{:st} AND party IS #{:pt}

 # WHERE home_state LIKE Virginia;