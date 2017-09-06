class Page:

    page_number = 0
    title = ""
    content = ""

    def __init__(self, page_no):
        self.page_number = page_no

    def set_page_number(self, page_no):
        self.page_number = page_no

    def set_title(self, new_title):
        self.title = new_title

    def add_content(self, new_content):
        self.content = self.content + new_content

    def get_page_number(self):
        return self.page_number

    def get_title(self):
        return self.title

    def get_content(self):
        return self.content

first = Page(1)
second = Page(2)
third = Page(3)

first.title = "The First Page"
first.add_content("Welcome to the first page. Here is a bunch of content")
print first.get_page_number()

print first.get_title()
