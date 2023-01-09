class Bookshelf
    def initialize(paths)
        @books = []

        paths.each { |path| self.register(path) }
    end

    private def register(path)
        puts path[:chapter]
    end
end

class Book
    def initialize(title)
        @title = ""
        @chapters = []
    end
end