class Bank

  attr_reader :balance
  attr_reader :last_deposit

  def initialize
    @balance = 0.0
    @last_deposit = 0.0
    @interest_rate = 0
  end


  def deposit(amount)
    @last_deposit += amount.round(2)
    @balance += amount.round(2)
  end


  def match_deposit
    @balance += @last_deposit.round(2)
    @last_deposit = 0
  end


  def withdraw(amount)
    @balance -= amount.round(2)
  end

end


puts piggy_bank = Bank.new

puts piggy_bank.balance

puts piggy_bank.interest_rate

#piggy_bank.deposit(1.25)
#
#piggy_bank.deposit(3.10)
#
#puts "Balance: $" + piggy_bank.balance.to_s
#puts "Last Deposit: $" + piggy_bank.last_deposit.to_s
#
#piggy_bank.match_deposit
#
#puts "Balance after match: $" + piggy_bank.balance.round(2).to_s
#
#piggy_bank.withdraw(5)
#
#p "Balance after withdrawal: $" + piggy_bank.balance.round(2).to_s


