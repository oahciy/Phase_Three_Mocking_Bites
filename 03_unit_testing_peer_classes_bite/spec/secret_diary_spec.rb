require "secret_diary"

RSpec.describe "int test" do
  it "starts off locked and raise error when being called read" do
    diary = double(:Diary, read: "Today is a nice day")
    secret_diary = SecretDiary.new(diary)
    expect {secret_diary.read}.to raise_error "Go away!"
  end

  it "unlocks the diary and returns the content" do
    diary = double(:Diary, read: "Today is a nice day")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "Today is a nice day"
  end

  it "locks the diary and raises error" do
    diary = double(:Diary, read: "Today is a nice day")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect {secret_diary.read}.to raise_error "Go away!"
  end
end