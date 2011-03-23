require 'kata'

kata "ASCII Tic Tac Toe" do
  context "board definition" do
    requirement "There is a 3x3 playing grid" do
      detail "rows are identified as 1,2,3"
      detail "columns are identified as 1,2,3"
    end

    requirement "The are two pieces" do
      detail "'o' is allowed"
      detail "'x' is allowed"
    end
  end

  context "making a move" do
    requirement "A player shall be able to make a move on the board" do
      detail "a move is defined by grid cooridinates"
      detail "each move must indicate the piece being moved"
      example "move(1, 1, 'x') defines placing the 'x' piece in the upper, left-most corner"
    end

    requirement "out of bounds should be rejected" do
      example "move(4, 4, 'x')"
    end
  end
end
