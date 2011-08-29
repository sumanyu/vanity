# https://gist.github.com/1178739
class Array
  def combinations
    raise "needs more than one elem" if size < 2
    return [self] if size == 2
    combinations = []
    (self[1]..self[length-1]).each do |item|
      (0..(length-1)).each do |index|
        combinations << [item, self[index]] unless item == self[index]
      end
    end
    combinations
  end
end