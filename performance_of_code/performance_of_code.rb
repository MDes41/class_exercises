require 'benchmark'

# This file contains a number of example pieces of
# code for you to benchmark. Experiment with uncommenting
# different pieces and moving them into benchmark blocks to
# see how the output looks.
# Feel free to add your own if there are any operations that
# you're curious about.

# ====== Benchmark Skeleton ======
Benchmark.bm do |performance|
  performance.report('thing1') { "stuff" }
  performance.report('thing2') { "stuff" }
  performance.report('thing3') { "stuff" }
end

# ===== Loops =====
# n = 10000000   # Experiment with changing this number
# for i in 1..n { rand }
# n.times  { |i| rand }
# 1.upto(n) { rand }

# ===== Combining Strings =====
# ["It", "is", Time.now].join(" ")
# "It is #{Time.now}"
# "It is " << "#{Time.now}"
# "It is " + "#{Time.now}"
# str1 = "It is "; str2 = "#{Time.now}"; str1 += str2
# str1 = "It is "; str2 = "#{Time.now}"; str1 << str2

# ===== Array Methods =====
# array = Array(1..10000000)
# array.map { |x| x**x }
# array.each { |x| x**x }
# array.each_with_index { |x, i| x**i }

# ===== Destructive vs. Non-Destructive
# .gsub vs .gsub! for strings
# .reverse vs .reverse! for arrays
# other destructive methods

# ===== Variable Assignment =====
# x = 100
# y = 5
# ...vs...
# x, y = 100, 5  (inline variable assignment)

# ===== Accessing data in a class =====
# Create a class with at least one instance variable
# Make an attr_reader for that variable
# Benchmark times to access the data via instance variable

# ===== Reading from a file vs. reading from memory ======
# (the data below was generated by the faker gem )
# students = [["first_name", "last_name", "id_num", "dob", "grade", "gender"],
# ["Henri", "Mayert", "3094667", "2000-06-11", "9", "male"],
# ["Maximillia", "Barton", "4265026", "2001-05-20", "9", "female"],
# ["Terrill", "Marquardt", "5876272", "2001-08-03", "9", "female"],
# ["Ricardo", "Veum", "6409417", "2002-09-22", "8", "female"],
# ["Maya", "Gleichner", "5477611", "2000-03-11", "7", "female"],
# ["Julianne", "Wiza", "1196374", "2002-04-11", "9", "female"],
# ["Eda", "McClure", "698148", "2002-06-14", "7", "female"],
# ["Garrick", "Pfannerstill", "1245894", "2003-01-23", "9", "female"],
# ["Fanny", "Deckow", "8955608", "2001-12-18", "6", "female"],
# ["Johnny", "Legros", "3563688", "2003-03-09", "9", "female"],
# ["Francisca", "Wolff", "5241539", "2000-01-23", "8", "female"],
# ["Esta", "Walker", "4736080", "2002-08-12", "6", "female"],
# ["Derek", "Tremblay", "2158903", "2002-07-19", "9", "female"],
# ["Weldon", "Hermann", "3086650", "2000-11-05", "6", "male"],
# ["Emily", "Steuber", "289501", "2002-10-20", "8", "female"],
# ["Hilda", "Grant", "1118321", "2001-11-26", "6", "female"],
# ["Jacquelyn", "Towne", "5519537", "1999-11-03", "6", "female"],
# ["Carol", "Hayes", "1615697", "1999-02-23", "6", "female"],
# ["Lily", "Okuneva", "8292328", "2002-08-18", "9", "male"],
# ["Orville", "VonRueden", "5642188", "2000-05-12", "8", "female"],
# ["Herbert", "Sipes", "4287277", "1999-08-01", "8", "female"],
# ["Alejandra", "Crist", "9702981", "2001-12-27", "9", "female"],
# ["Deon", "Ryan", "5883897", "1999-06-08", "8", "female"],
# ["Monroe", "Lebsack", "7885298", "2002-08-15", "6", "female"],
# ["Stephany", "Jakubowski", "2592414", "2003-12-22", "6", "female"],
# ["Beaulah", "Padberg", "9715525", "2000-12-23", "7", "male"],
# ["Madisyn", "Pouros", "903068", "2000-01-21", "7", "male"],
# ["Zita", "Stiedemann", "1123241", "1999-06-11", "9", "male"],
# ["Jaren", "Keebler", "7366389", "1999-08-09", "8", "female"],
# ["Danny", "Dietrich", "8161161", "2000-05-27", "7", "female"],
# ["Eusebio", "Hoeger", "4289151", "2002-12-07", "7", "female"],
# ["Keely", "Collier", "389248", "2000-07-10", "6", "female"],
# ["Kay", "Wunsch", "1288284", "2001-08-19", "8", "male"],
# ["Albin", "Wyman", "6401943", "2002-12-27", "8", "male"],
# ["Gabriel", "Anderson", "3053023", "2000-01-17", "8", "male"],
# ["Raoul", "Hoppe", "2921938", "2000-07-03", "9", "female"],
# ["Haleigh", "Leannon", "8325246", "2003-06-08", "8", "female"],
# ["Lonzo", "Hahn", "2113364", "2001-08-20", "9", "female"],
# ["Johnathan", "Howell", "2279252", "2001-04-27", "7", "female"],
# ["Rosemary", "Casper", "5344258", "2003-06-25", "6", "female"],
# ["Odell", "Zulauf", "7073099", "2002-09-07", "8", "male"],
# ["Kaley", "Wiegand", "6429360", "2000-02-08", "6", "male"],
# ["Kelsie", "Hills", "7518364", "2003-11-17", "8", "female"],
# ["Sonya", "Ondricka", "365739", "1999-01-16", "8", "female"],
# ["Zoie", "Morissette", "8141230", "2002-03-03", "8", "male"],
# ["Lou", "Rice", "1693298", "2000-03-17", "7", "male"],
# ["Jeramy", "Jerde", "4393260", "2001-08-02", "9", "female"],
# ["Jacinto", "Homenick", "7573238", "2000-06-22", "7", "male"],
# ["Corine", "Haag", "8256152", "2003-07-16", "7", "male"],
# ["Dean", "McDermott", "834828", "2001-05-09", "6", "female"],
# ["Maxime", "Bosco", "835713", "2002-06-17", "8", "male"],
# ["Rocky", "Carter", "3392412", "1999-07-13", "7", "female"],
# ["Jacynthe", "Barrows", "1177492", "2003-11-12", "9", "female"],
# ["Isabell", "Brown", "1336065", "2001-03-05", "6", "female"],
# ["Khalid", "King", "2995205", "2001-08-17", "7", "male"],
# ["Darrell", "Ruecker", "1510661", "2003-04-15", "9", "female"],
# ["Osbaldo", "Koelpin", "1242201", "2000-08-09", "9", "female"],
# ["Della", "Lindgren", "9199064", "2001-04-06", "8", "female"],
# ["Cortez", "Hoeger", "364706", "1999-07-25", "7", "female"],
# ["Norene", "Okuneva", "7525702", "2000-11-20", "9", "female"],
# ["Loyal", "Hansen", "1483843", "2000-02-28", "6", "male"],
# ["Diamond", "Boyle", "3989914", "2003-09-21", "9", "male"],
# ["Alek", "Eichmann", "6027855", "2002-12-04", "7", "female"],
# ["Josephine", "Bergstrom", "3162590", "2003-09-11", "8", "male"],
# ["Carolanne", "Boyle", "8885429", "2002-08-09", "6", "male"],
# ["Judy", "Dach", "4522267", "2001-08-10", "8", "male"],
# ["Adrianna", "Wolf", "6009893", "2002-01-27", "9", "male"],
# ["Carissa", "Sporer", "6108213", "2000-06-25", "7", "female"],
# ["Dante", "Zemlak", "5807699", "2003-06-22", "8", "male"],
# ["Loraine", "Becker", "4540947", "2002-11-28", "7", "male"],
# ["Anibal", "Weber", "8718416", "2003-07-11", "6", "female"],
# ["Vince", "Ryan", "4418099", "2001-05-15", "9", "male"],
# ["Lola", "Oberbrunner", "4884102", "2002-06-06", "8", "male"],
# ["Lue", "Stamm", "2470540", "2001-08-01", "8", "male"],
# ["Maritza", "Bailey", "2133675", "1999-06-07", "9", "male"],
# ["Selina", "Dickinson", "6657472", "2000-10-03", "8", "female"],
# ["Vernie", "Gutmann", "5619685", "2002-02-18", "7", "male"],
# ["Theron", "Morar", "5467002", "2000-05-21", "8", "female"],
# ["Jocelyn", "Rowe", "7725569", "2002-10-20", "6", "female"],
# ["Elmer", "Osinski", "9756750", "2001-11-26", "8", "female"],
# ["Izaiah", "Ernser", "3743317", "1999-08-11", "8", "male"],
# ["Vicenta", "Marquardt", "9434275", "2003-06-24", "9", "male"],
# ["Amani", "Huels", "7862981", "2003-02-01", "6", "female"],
# ["Kadin", "Hyatt", "3918370", "1999-03-27", "6", "female"],
# ["Kaley", "Jenkins", "1855433", "1999-03-04", "9", "male"],
# ["Vena", "Wolff", "8489512", "2002-04-15", "7", "male"],
# ["Raina", "Tillman", "8967551", "2002-11-04", "8", "female"],
# ["Kiarra", "Kuhlman", "1951462", "2001-01-17", "8", "male"],
# ["Diamond", "McGlynn", "1417638", "2002-12-20", "6", "female"],
# ["Julie", "Mitchell", "8658178", "2002-03-10", "8", "female"],
# ["Rashawn", "Cole", "4690865", "2000-10-24", "8", "female"],
# ["Silas", "Walker", "405452", "2000-03-18", "6", "male"],
# ["Kylie", "Zboncak", "3894455", "2001-05-23", "8", "male"],
# ["Kaylin", "Windler", "9450908", "2001-08-08", "8", "male"],
# ["Anjali", "Harris", "3905293", "2001-01-23", "9", "male"],
# ["Janessa", "Barton", "1362974", "2003-10-20", "7", "male"],
# ["Alysson", "Kautzer", "7044421", "2003-02-03", "8", "male"],
# ["Crystel", "Corkery", "4358335", "2003-11-14", "9", "female"],
# ["Vicente", "Mosciski", "2308423", "2002-10-28", "9", "male"],
# ["Issac", "Bergstrom", "633275", "2001-12-25", "6", "female"]]

# n = 1000
# require 'csv'
# Benchmark.bm do |performance|
#   performance.report('csv') {
#     n.times do
#       CSV.foreach('./student_roster.csv') { |row| row }
#     end
#   }
#   performance.report('memory') {
#     n.times do
#       students.each { |row| row }
#     end
#   }
# end

# ============== Conditional vs. Rescue ==============
#class Stuff
#  def using_rescue
#    self.nonexistant_method
#    rescue NoMethodError
#  end
#  def using_conditional
#    respond_to?(:nonexistant_method) ? self.nonexistant_method : nil
#  end
#end

# stuff = Stuff.new
# x = 1_000_000

# Benchmark.bm do |performance|
#  performance.report("using conditional") { x.times { stuff.using_conditional } }
#  performance.report("using rescue")      { x.times { stuff.using_rescue    } }
# end
