from seleniumbase import BaseCase

class GoogleSearchTests(BaseCase):

    def test_scenario_1(self):
        # Scenario 1: User can search with "Google Search"
        self.open("https://www.google.com")
        
        # Type "test automation" into the search field and click the Google Search button
        self.type('input[name="q"]', "test automation")
        self.click('input[name="btnK"]')  # Click the "Google Search" button

        # Verify that the first 3 results contain the word "automation"
        results = self.find_elements('h3')
        for i, result in enumerate(results[:3]):
            assert "automation" in result.text.lower(), f"Result {i + 1} does not contain 'automation'"

    def test_scenario_2(self):
        # Scenario 2: User can go to the first search result
        self.open("https://www.google.com")

        # Type "test automation" into the search field and press Enter
        self.type('input[name="q"]', "test automation")
        self.type('input[name="q"]', '\n')  # Press Enter

        # Click on the first result link
        self.click('h3')

        # Verify that the page title contains the word "automation"
        self.assert_title_contains("automation")

if __name__ == "__main__":
    GoogleSearchTests().main()
