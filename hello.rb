# def cry(animal)
#   if animal == 'cat'
#     'にゃー'
#   else
#     '???'
#   end
# end

# puts cry('cat')
# puts cry('dog')


# a = [1, 2, 3, 'aa', [1, 2, 3]]
# b = []
# z = (0..8).to_a

# puts a
# puts a.empty?
# puts b.empty?
# puts a.include?('aa')
# puts a.reverse
# z = (0..8).to_a.shuffle


# z << 100
# puts z

# z.push(10000)
# puts z

# z.pop
# puts z

# z.shift
# puts z

# z << 3
# z << 6
# puts z

# z.uniq!
# puts z

# introduce = ['my', 'name', 'is', 'hiroki']
# puts introduce.join
# puts introduce.join(' ')
# puts introduce.join('_')
# puts introduce.sort
# puts introduce.size
# puts introduce.length

# shimizu = {'name' => 'Shimizu', 'birth_place' => 'Osaka', 'birthday' => '#{24}'}
# puts shimizu['name']
# puts shimizu['birth_place']

# shimizu['age'] = 24
# puts shimizu


# shimizu = {name: 'Hiroki', birth_place: 'Osaka'}
# shimizu[:age] = 24

# puts shimizu
# puts shimizu[:name]
# shimizu.delete(:age)
# puts shimizu

# shimizu.each do |name, birth_place|
#   puts "#{name}, #{birth_place}"
# end

# puts shimizu.keys
# puts shimizu.has_key?(:name)


# 5.times do |i|
#   puts "#{i}: Hello"
# end

# 3.times {|i| puts "#{i}: hello!"}

# i = 0
# while i < 10
#   puts "#{i}: hello!"
#   i += 1
# end


# 10.upto(14) {
#   |n| puts n
# }

# 14.downto(10) {
#   |n| puts n
# }

# 1.step(10, 2) {
#   |n| puts n
# }

# 10.step(1, -2) {|n| puts n}

# n = 0
# while true
#   puts n
#   n += 1
# end

# i = 0
# loop do
#   puts i
#   i += 1
# end

# j = 0
# loop do
#   puts j
#   j += 1
#   break if j == 10
# end

# numbers = [1, 2, 3, 4, 5]
# numbers.each do |n|
#   next if n % 2 == 0
#   puts n
# end


# class User
#   attr_accessor :name
#   # attr_reader :name
#   # attr_writer :name
#   def initialize(name)
#     @name = name
#   end

  # def name 
  #   @name
  # end

  # def name=(value)
  #   @name = value
  # end

# end

# hiroki = User.new('Hiroki')
# puts hiroki.name
# hiroki.name = 'sakura'
# puts hiroki.name


# class User
#   REGION = 'JAPAN'

#   @@count = 0
#   def initialize(name)
#     @name = name
#     @@count += 1
#   end

#   def hello
#     puts "I am #{@name}."
#   end

#   def self.info
#     puts "#{@@count} instance(s).Reagion: #{REGION}"
#   end

# end

# hiroki = User.new('Hiroki')
# hiroki.hello
# User.info

# sakura = User.new('Sakura')
# sakura.hello
# User.info

# mary = User.new('Mary')
# mary.hello
# User.info

# puts User::REGION


# class User
#   def initialize(name)
#     @name = name
#   end

#   def hello 
#     puts "Hello! I am #{@name}"
#   end
# end

# shimizu = User.new('Shimizu')
# shimizu.hello

# class AdminUser < User
#   def hello_admin
#     puts "Hello! I am #{@name} from AdminUser."
#   end

#   # def hello
#   #   puts 'Admin!'
#   # end

# end

# hosihara = AdminUser.new('Hosihara')
# hosihara.hello
# # hosihara.hello_admin


# class User
#   def initialize(name)
#     @name = name
#   end

#   def say 
#     hello 
#   end

#   private
#     def hello 
#       puts "hello! I am #{@name}"
#     end

# end

# user = User.new('Shimizu')
# # user.hello
# user.say


# モジュール
# ・クラスのようにメソッドや定数をまとめられるもの
# - クラスとの違い
#   - インスタンスを作成できない
#   - 継続ができない
# - 関連するメソッドや定数などをまとめてグループ化しておきたいときに使う
# - モジュールは手軽に使えて便利らしい！

# module Driver
#   def self.run
#     puts 'Run'
#   end

#   def self.stop
#     puts 'Stop'
#   end
# end


# Driver.run
# Driver.stop

# エラーが出る（インスタンスかできない、継承ができない）
# driver = Driver.new
# # module TaxDriver < Driver


puts '---数値を入力してください---'
i = gets.to_i

begin
  # 例外が起きる処理
  puts 10 / i
rescue => ex
  # 例外が発生した場合の処理
  puts 'error!'
  puts ex.message
  puts ex.class
ensure
  # 例外は発生しても、しなくても、最後に実行したい処理
  puts 'end'
end


