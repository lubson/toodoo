require 'spec_helper'

describe User do
  describe 'validations' do
    
    context 'with valid data' do
      it { should accept_values_for(:email, 'john@example.com', 'lambda@gusiev.com') }
      it { should accept_values_for(:password, '123456', 'password', 'Valid_passWord123') }
    end
 
    context 'with invalid email' do
      it { should_not accept_values_for(:email, ' ', 'john.example.com', 'lambda@gusiev') }
    end

    context 'with invalid password' do
      it { should_not accept_values_for(:password, ' ', '12345', 'asdfg')}
    end
  end
end