require 'test_helper'
require 'minitest/autorun'

describe User do
  it 'can not have empty login' do
    role1 = Role.create(name: 'User')
    _(User.create(login: nil, password: '12345', email: 'i@yandex.ru', role: role1, telephone_number: '892818000').valid?).must_equal false
  end

  it 'can not have empty passsword' do
    role1 = Role.create(name: 'User')
    _(User.create(login: 'Oleg', password: nil, email: 'oleg@yandex.ru', role: role1, telephone_number: '892818000').valid?).must_equal false
  end

  it 'can not have empty email' do
    role1 = Role.create(name: 'User')
    _(User.create(login: 'Oleg', password: '12345', email: nil, role: role1, telephone_number: '892818000').valid?).must_equal false
  end
end