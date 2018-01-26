describe "As a user" do
  describe "when I visits /comedians" do
    it "I see a list of comedians with a name" do
      Comedian.create(name: "Opakawagalaga", age: 12)
      visit "/comedians"

      expect(page).to have_content("Opakawagalaga")
    end

    it "I see a list of comedians with an age" do
      Comedian.create(name: "Opakawagalaga", age: 12)
      visit "/comedians"

      expect(page).to have_content("12")
    end

    it "I can see how a list of each comedian's specials" do
      Comedian.create(name: "Opakawagalaga", age: 12)
      Special.create(name: "The Opakawagalaga Show", comedian_id: 1)
      visit "/comedians"

      expect(page).to have_content("The Opakawagalaga Show")
    end

    it "I can see the average age for all comedians" do
      Comedian.create(name: "Opakawagalage", age: 20)
      Comedian.create(name: "Herp", age: 10)
      visit "/comedians"

      expect(page).to have_content("15")
    end

    it "I can see the count of specials for each comedian" do
      Comedian.create(name: "Opakawagalage", age: 500)
      Special.create(name: "The Opakawagalaga Show", comedian_id: 1)
      Special.create(name: "The Opakawagalaga Show", comedian_id: 1)
      visit "/comedians"

      expect(page).to have_content("2")
    end

    it "I can search for all comedians by age" do
      Comedian.create(name: "Opakawagalaga", age: 30)
      Comedian.create(name: "Opakawagalaga", age: 30)
      Comedian.create(name: "Opakawagalaga", age: 30)
      Comedian.create(name: "Henry", age: 25)
      visit "/comedians?age=30"

      expect(page).to have_content("Opakawagalaga")
      expect(page).to_not have_content("Henry")
    end
  end
end
