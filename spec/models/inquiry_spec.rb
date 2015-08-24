require 'rails_helper'

RSpec.describe Inquiry, type: :model do
  it 'gets and set name, email, subject, and message' do
    inq = Inquiry.new
    inq.name = "Joe"
    inq.email = "Joe@email.com"
    inq.subject = "beer"
    inq.message = "gimmie some."

    expect(inq.name).to eq("Joe")
    expect(inq.email).to eq("Joe@email.com")
    expect(inq.subject).to eq("beer")
    expect(inq.message).to eq("gimmie some.")
  end
end
