module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      return 3.213
    elsif balance < 1000
      return 0.5
    elsif balance < 5000
      return 1.621
    else
      return 2.475
    end
  end

  def self.annual_balance_update(balance)
    balance * (1 + self.interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    year = 1
    balance = self.annual_balance_update(current_balance)
    while balance < desired_balance
      year = year + 1
      balance = self.annual_balance_update(balance)
    end
    year
  end
end