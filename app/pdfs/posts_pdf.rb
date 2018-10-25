require 'prawn'
class PostsPdf < Prawn::Document
    def initialize(post)
        super()
            @post=post
            draw_table
    end

    def draw_table
     table line_items_rows
    end

    def line_items_rows
        [["Title", "Body", "Done_homework"]]+
        @post.map do |posts|
            [posts.title, posts.body, "#{posts.done_homework}"]
        end
    end
end