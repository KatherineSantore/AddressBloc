class AddressBook
  attr_reader :entries
  def initialize
     @entries = []
   end
   # Search AddressBook for a specific entry by name
      def iterative_search(name)
        @entries.each.do |entry|
        if entry.name == name
          return entry
        end
      end

      return nil

      def binary_search(name)
      # #1
     lower = 0
     upper = entries.length - 1

     # #2
     while lower <= upper
       # #3
       mid = (lower + upper) / 2
       mid_name = entries[mid].name

       # #4
       if name == mid_name
         return entries[mid]
       elsif name < mid_name
         upper = mid - 1
       elsif name > mid_name
         lower = mid + 1
       end
     end

     # #5
     return nil
      end
    end
