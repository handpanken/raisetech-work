#課題2
# ?Communicationというクラスを作ってみよう。
# ?greetというメソッドを定義してみよう。
# ?クラスを継承して新しいサブクラスを作ってみよう。WorkplaceCommunication(職場)とか。
# ?greetというメソッド内でHelloという言葉を受けたら、Helloと返す処理を実装してみよう。
# ?職場かどうかを判断するメソッドを作って、職場じゃなければ挨拶しないようにしてみよう（酷い）

class Communication
def greet（receive）
receive == "hello"
puts "hello"
end
end

class WorkplaceCommunication  < Communication

def Workplace_greet（employee,receive）
if employee == "my_workplace" && receive == "hello"
puts  "hello"
else
puts  "ignore"
end
end
end

communication = Communication.new

workplaceCommunication  = WorkplaceCommunication.new

communication.greet（"hello"）

workplaceCommunication. Workplace_greet（"my_workplace","hello"）

#課題3
# ?Communicationクラスに新しく話しかけてきた人が誰か(同僚とか上司とか)で
#  応答を返すか、例外を返すような処理を作ってみよう。
# ?例外の条件や例外じゃなかった場合にどういった応答を返すかは好きなように作ってOK。
# ?メソッドの使い方、if文や例外処理の使い方に慣れてみよう
# ?例外クラスは自作も可能。何か面白い例外を継承して、勝手に自作してもいいし、
#  既存の例外クラスを使ってもいい。とにかく例外をraiseしてみよう。

class Communication 
def greet（people）
if people == "上司"
puts "hello"
else
elsif people=="同僚"
puts "こんにちは"
end
end
end

communication = Communication.new
puts "挨拶された人は上司か同僚か？"
people=gets.chomp
communication.greet（people）

begin
communication
rescue
puts"エラー"
end

class Nommunication < Communication
def after_five（number）
puts "5時帰宅！誰と過ごす？\n1.家族 2.職場関係 3.1人"
select_number = gets.to_i
if select_number==1
puts "外食へ"
elsif select_number==2
puts "飲みに"
elsif select_number==3
puts "スーパーへ"
else
raise
end
end
end

communication=Communication.new
nommunication=Nommunication.new

begin
communication.number
rescue
puts "入力ミスです"
retry
end


#例外処理
#https://techacademy.jp/magazine/18769

#getsメソッド
#https://pikawaka.com/ruby/gets

#raiseメソッド
#https://techacademy.jp/magazine/19775

#numはnumberの略です。数値用の変数で有ることを表すときに使います。


＃「int型」って単語が出てきたら「変数の種類のひとつで『（桁数の大きくない）整数を入れられるよ！』な種類なんだな～」