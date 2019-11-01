# frozen_string_literal: true

class Result
  def self.check1(arr)
    i = 0
    loop do
      return arr[i] if arr[i] == arr[i + 1] && arr[i] == arr[i + 2]

      i += 3
      break if i > 7
    end
  end

  def self.check2(arr)
    return arr[0] if arr[0] == arr[4] && arr[0] == arr[8]
    return arr[2] if arr[2] == arr[4] && arr[2] == arr[6]
  end

  def self.check3(arr)
    (0..2).each do |i|
      return arr[i] if arr[i] == arr[i + 3] && arr[i] == arr[i + 6]
    end
    nil
  end
end
