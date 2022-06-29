require 'active_record'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => "students.db")

class Parent < ActiveRecord::Base
    has_one :student
end

class Student < ActiveRecord::Base
    belongs_to :parent
end

puts "Total students: #{Student.all.length}"
puts "Total with name Ivan: #{Student.where('name = ?', "Иван").length}"
puts "Total students added after 2020-09-01: #{Student.where('created_at > ?', "2020-09-01").length}"
students = Student.find_by_sql('select * from students s Join parents p on p.id = s.parent_id').length
puts "Total students with parent: #{students}"
withoutparents = Student.find_by_sql('select * from students s Where NOT EXISTS (select p.id FROM parents p 
     Where p.id = s.parent_id
    )')
puts "Students without parents #{withoutparents.length}"
st = Student.find_by_sql('
    SELECT * FROM students JOIN
    parents ON parents.id = students.parent_id WHERE parents.name = "Марина"
    ')
puts "Parent's name is Marina #{st.length}"



# Student.columns.each { |column|
#     puts column.name
#     puts column.type
#   }