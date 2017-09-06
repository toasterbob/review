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
