#!/bin/ruby

n = gets.strip.to_i
genes = gets.strip
genes = genes.split(' ')
health = gets.strip
health = health.split(' ').map(&:to_i)
s = gets.strip.to_i
health_arr = []

gene_hash = Hash.new

genes.each_with_index do |gene, i|
    gene_hash[gene] = health[i]
end

for a0 in (0..s-1)
    first,last,d = gets.strip.split(' ')
    first = first.to_i
    last = last.to_i
    count = 0

    first.upto(last) do |i|
        check = genes[i]

        c_length = check.length

        j = 0
        while j <= (d.length - c_length)

            count += health[i] if d.slice(j, c_length) == check
            j += 1
        end
    end
    health_arr << count
end

puts "#{health_arr.min} #{health_arr.max}"


##################################################
#!/bin/ruby

class AhoCorasick
    def initialize(args, values)
    terms = args
    @root = TreeNode.new
    unsafe_insert(terms, values)
    create_suffix_links
  end

  def match(string)
    matches = 0
    node = string.each_char.inject(@root) do |node, char|
      #matches += node.matches if node
        matches += node.values.reduce(0, :+) if node
      (node && node.find(char.to_sym)) || @root.find(char.to_sym)
    end
    #matches += node.matches if node
    matches += node.values.reduce(0, :+) if node
    return matches
  end

  def insert(*args)
    terms = terms_for(args)
    unsafe_insert(terms)
    create_suffix_links
  end

  private

  def terms_for(args)
    if args.length == 1 && args[0].is_a?(Array)
      args[0]
    else
      args
    end
  end

    def unsafe_insert(terms, values)
    terms.each_with_index do |t, i|
        t.each_char.inject(@root) {|node, char| node.child_for(char.to_sym) }.add_value(values[i])
    end
  end

  def create_suffix_links
    queue = @root.children.to_a.dup
    while !queue.empty?
      char, node = queue.shift
      node.suffix = node.parent == @root ? @root : node.find_suffix(char)
      node.children.to_a.each do |entry|
        queue.push(entry)
      end
    end
  end

  class TreeNode
    def initialize(parent=nil)
      @parent = parent
      @suffix = nil
      @matches = []
      @values = []
      @children = {}
    end

      attr_reader :matches, :children, :parent, :values
    attr_accessor :suffix


    def find(char)
      @children[char.to_sym] || (suffix && suffix.find(char.to_sym))
    end

    def add_match(str)
      @matches << str
    end

    def add_value(num)
      @values << num
    end

    def child_for(char)
      @children[char.to_sym] ||= TreeNode.new(self)
    end

    def find_suffix(char)
      failure = parent.suffix
      while !failure.find(char) && failure.parent
        failure = failure.suffix
      end

      suffix = failure.find(char)
      if suffix
        @matches.push(*suffix.matches)
      elsif !failure.parent
        suffix = failure
      end

      suffix
    end

  end
end



n = gets.strip.to_i
genes = gets.strip
genes = genes.split(' ')
health = gets.strip
health = health.split(' ').map(&:to_i)
s = gets.strip.to_i
health_arr = []
high, low = 0, nil

for a0 in (0..s-1)
    first,last,d = gets.strip.split(' ')
    first = first.to_i
    last = last.to_i
    count = 0


    c = AhoCorasick.new(genes[first..last], health[first..last])
    count = c.match(d)



    low = count if low.nil?
    high = count if count > high
    low = count if count < low
end

puts "#{low} #{high}"
