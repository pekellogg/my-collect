def my_collect(collection)
    if block_given?
        i = 0
        container = []
        while i < collection.length
            container << yield(collection[i])
            i += 1
        end
        container
    else
        "Error: no block given."
    end
end

# family = ["shanks", "pey", "simbo"]
# my_collect(family) { |i| i.upcase }
