# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


####### Student Datase Information #######

Student.create(first_name: 'Yuga', last_name: 'Aoyama', age: '16', education: 'High School', quirk: 'Navel Laser', hero_name: 'Cant Stop Twinkling')
Student.create(first_name: 'Mina', last_name: 'Ashido', age: '16', education: 'High School', quirk: 'Acid', hero_name: 'Alien Queen')
Student.create(first_name: 'Tsuya', last_name: 'Asui', age: '15', education: 'High School', quirk: 'Frog', hero_name: 'Froppy')
Student.create(first_name: 'Tenya', last_name: 'Iida', age: '15', education: 'High School', quirk: 'Engine', hero_name: 'Ingenium')
Student.create(first_name: 'Ochaco', last_name: 'Uraraka', age: '15', education: 'High School', quirk: 'Zero Gravity', hero_name: 'Uravity')
Student.create(first_name: 'Mashirao', last_name: 'Ojiro', age: '16', education: 'High School', quirk: 'Tail', hero_name: 'Tailman')
Student.create(first_name: 'Denki', last_name: 'Kaminari', age: '16', education: 'High School', quirk: 'Electrification', hero_name: 'Chargebolt')
Student.create(first_name: 'Eijiro', last_name: 'Kirishima', age: '16', education: 'High School', quirk: 'Hardening', hero_name: 'Red Riot')
Student.create(first_name: 'Koji', last_name: 'Koda', age: '15', education: 'High School', quirk: 'Anivoice', hero_name: 'Anima')
Student.create(first_name: 'Rikido', last_name: 'Sato', age: '16', education: 'High School', quirk: 'Sugar Rush', hero_name: 'Sugarman')
Student.create(first_name: 'Mezo', last_name: 'Shoji', age: '15', education: 'High School', quirk: 'Dupli-Arms', hero_name: 'Tentacole')
Student.create(first_name: 'Kyoka', last_name: 'Jiro', age: '16', education: 'High School', quirk: 'Earphone Jack', hero_name: 'Earphone Jack')
Student.create(first_name: 'Hanta', last_name: 'Sero', age: '16', education: 'High School', quirk: 'Tape', hero_name: 'Cellophane')
Student.create(first_name: 'Fumikage', last_name: 'Tokoyami', age: '16', education: 'High School', quirk: 'Dark Shadow', hero_name: 'Tsukuyomi')
Student.create(first_name: 'Shoto', last_name: 'Todoroki', age: '15', education: 'High School', quirk: 'Half-Cold Half-Hot', hero_name: 'Shoto')
Student.create(first_name: 'Toru', last_name: 'Hagakure', age: '16', education: 'High School', quirk: 'Invisibility', hero_name: 'Invisible Girl')
Student.create(first_name: 'Katsuki', last_name: 'Bakugo', age: '16', education: 'High School', quirk: 'Explosion', hero_name: 'Kacchan')
Student.create(first_name: 'Izuku', last_name: 'Midoriya', age: '16', education: 'High School', quirk: 'One For All', hero_name: 'Deku')
Student.create(first_name: 'Minoru', last_name: 'Mineta', age: '16', education: 'High School', quirk: 'Pop Off', hero_name: 'Grape Juice')
Student.create(first_name: 'Momo', last_name: 'Yaoyorozu', age: '16', education: 'High School', quirk: 'Creation', hero_name: 'Creati')

######### Teacher Database Information ###########
Teacher.create(first_name: 'Toshinori', last_name: 'Yagi', age: '42', salary: '75000', education: 'High School', quirk: 'One For All', hero_name: 'All Might')
Teacher.create(first_name: 'Shota', last_name: 'Aizawa', age: '31', salary: '60000', education: 'High School', quirk: 'Erasure', hero_name: 'Eraser Head')
Teacher.create(first_name: 'Hizashi', last_name: 'Yamada', age: '30', salary: '65000', education: 'High School', quirk: 'Voice', hero_name: 'Present Mic')
Teacher.create(first_name: 'Ken', last_name: 'Ishiyama', age: '28', salary: '50000', education: 'High School', quirk: 'Cement', hero_name: 'Cementoss')
Teacher.create(first_name: 'Nemuri', last_name: 'Kayam', age: '31', salary: '80000', education: 'High School', quirk: 'Somnambulist', hero_name: 'Midnight')
Teacher.create(first_name: 'Unknown', last_name: 'Unknown', age: '1', salary: '65000', education: 'High School', quirk: 'Homing', hero_name: 'Snipe')
Teacher.create(first_name: 'Unknown', last_name: 'Unknown', age: '41', salary: '50000', education: 'High School', quirk: 'Clonse', hero_name: 'Ectoplasm')
Teacher.create(first_name: 'Higari', last_name: 'Maijima', age: '40', salary: '30000', education: 'High School', quirk: 'Iron Claws', hero_name: 'Power Loader')
Teacher.create(first_name: 'Sekijiro', last_name: 'Kan', age: '31', salary: '45000', education: 'High School', quirk: 'Blood Control', hero_name: 'Vlad King')
Teacher.create(first_name: 'Sorahiko', last_name: '', age: '70', salary: '5000', education: 'High School', quirk: 'Jet', hero_name: 'Gran Torino')


########## Course Database Information ######

Course.create(name: 'Heroics', class_hours: '20')
Course.create(name: 'English', class_hours: '35')
Course.create(name: 'Modern Literature', class_hours: '30')
Course.create(name: 'Art History', class_hours: '15')
Course.create(name: 'Mathematics', class_hours: '40')
Course.create(name: 'Rescue Time', class_hours: '40')
