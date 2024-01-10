# require some_module

# irb for cli 
def hi(name = "World") # default: World -> just do irb > hi
  puts "Hello #{name}!" # put string -> returns nil
end

class Greeter
  def initilize(name = "World")
    @name = name # instance variable
    # attr_accessor :name 
    # attr_accessorを使うと2つの新しいメソッドが定義されます。 
    # nameは値を参照するメソッドで、name=は値を設定するメソッドです。
  end
  def say_hi
    puts "Hi #{@name}!"
  end
end

class MegaGreeter
    attr_accessor :names
  
    # Create the object
    def initialize(names = "World")
      @names = names
    end
  
    # Say hi to everybody
    def say_hi
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("each")
        # @names is a list of some kind, iterate!
        @names.each do |name|
          puts "Hello #{name}!"
        end
      else
        puts "Hello #{@names}!"
      end
    end
  
    # Say bye to everybody
    def say_bye
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("join")
        # Join the list elements with commas
        puts "Goodbye #{@names.join(", ")}.  Come back soon!"
      else
        puts "Goodbye #{@names}.  Come back soon!"
      end
    end
  end

  if __FILE__ == $0
    todo()
  end
  # __FILE__ は現在のファイル名を返す特別な変数です。 
  # $0はプログラムを実行するときに使われるファイル名です。 
  # このチェックは、「もしこれがメインファイルとして実行されているならば……」 という意味になります。 
  # これは、ライブラリとして使われる場合には実行されないけれど、 実行ファイルとして使われる場合には実行されるコードを書くために使われます。
