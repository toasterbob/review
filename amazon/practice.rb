

def mult(num)
  start = "1"
  while start.to_i % num != 0
    start += "1"
  end
  start.to_i
end

def most_frequent(arr)
  return nil if arr.empty?
  counter = Hash.new(0)
  high = arr[0]
  count = 0
  arr.each do |el|
    counter[el] += 1
    if counter[el] > count
      high = el
      count = counter[el]
    elsif counter[el] == count
      if el < high
        high = el
      end
    end
  end
  "#{high}:#{count}"
end

most_frequent([1, 1, 2, 3, 2, 1, 2, 2]) # 2:4
most_frequent([1, 1, 2, 3, 2, 1, 2, 2, 1]) # 1:4



def maximize(arr, n)
  most = arr.sort.reverse
  n.times do
    return arr.join("").to_i if arr == most
    i = 0
    until arr[i] < arr[i + 1]
      i += 1
    end
    arr[i], arr[i+1] = arr[i+1], arr[i]
  end
  arr.join("").to_i
end
maximize([1, 2, 4, 3], 2)




def closestLocations(totalCrates, allLocations, truckCapacity)
    result = []
    return result if truckCapacity == 0
    return allLocations if totalCrates == truckCapacity
    return allLocations if totalCrates < truckCapacity

    distances = Hash.new
    distance_lowest = []

    allLocations.each do |crate|
        x = crate[0] ** 2
        y = crate[1] ** 2
        distance = Math.sqrt(x + y)
        distance_lowest << distance
        distances[distance] = crate
    end

    distance_lowest.sort!
    distance_lowest = distance_lowest.take(truckCapacity)

    distance_lowest.each do |d|
        result << distances[d]
    end

    result
end

def getMovieRecommendations(movie, n)
    results = []
    return results if movie.getSimilarMovies().empty?
    return results if n <= 0

    best = Hash.new {|h,v| h[v] = []}
    all_similar = {}
    queue = [movie]

    until queue.empty?
        current = queue.shift
        more_movies = []
        current.getSimilarMovies().each do |sim_movie|
            more_movies << sim_movie unless all_similar[sim_movie]
            all_similar[sim_movie] = true
            if sim_movie != movie
                best[sim_movie.getRating()].push(sim_movie) unless best[sim_movie.getRating()].include?(sim_movie)
            end
        end
        queue = queue + more_movies
    end
    all_similar.delete(movie)

    all = all_similar.keys
    return all if all.length < n

    top = best.keys.sort.reverse.take(n)

    while results.length < n || !top.empty?
        rating = top.shift
        results = results + best[rating]
    end

    results.take(n)

end
