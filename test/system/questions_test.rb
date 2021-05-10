require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
  visit ask_url
  assert_selector "h1", text: "Ask your coach anything"
  end


  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "input", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
   end


  test "saying I am going to work is OK for the coach" do
    visit ask_url
    fill_in "input", with: "I am going to work"
    click_on "Ask"

    assert_text 'Great!'
  end

  test 'ask a question to the coach' do
    visit ask_url
    fill_in "input", with: "How are you coach ?"
    click_on "Ask"

    assert_text 'Silly question, get dressed and go to work!'
  end
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
end
