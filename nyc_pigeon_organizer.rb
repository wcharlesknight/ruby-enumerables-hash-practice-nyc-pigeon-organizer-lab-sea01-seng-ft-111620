require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), final|
    value.each do |ik, names|
      names.each do |name|
        #binding.pry
        if !final[name] #makes it so it doesn't add a name twice
          final[name] = {}  
        end
        if !final[name][key]
          final[name][key] = []
        end
        final[name][key].push(ik.to_s)
      end
    end   
  end
end
