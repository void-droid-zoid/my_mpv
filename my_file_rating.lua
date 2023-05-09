function my_fn(event)
    print("start of playback!")
end


function on_rate_file(rating)
    print("rating: " .. rating)
    rate_file(rating)
end


function on_rate_file_shift(rating)
    print("rating: " .. rating)
    rate_file_shift(rating)
end


utils = require("mp.utils")

function rate_file(rating)
    local work_dir = mp.get_property_native("working-directory")
    local path = mp.get_property("path")
    local file_path = mp.get_property_native("path")
    local final_path = utils.join_path(work_dir, file_path)
    
    local real_rating = rating * 2
    local stars = ''
    for s=1,rating do
        stars = stars .. '*'
    end

    if rating == 0 then
      stars = '-'
    end

    mp.commandv("run", "setfattr", "-n", "user.baloo.rating", "-v", real_rating, final_path)
    mp.commandv("show-text", "Rated " .. stars, 1500)
end




function rate_file_shift(rating)
    local work_dir = mp.get_property_native("working-directory")
    local path = mp.get_property("path")
    local file_path = mp.get_property_native("path")
    local final_path = utils.join_path(work_dir, file_path)

    local real_rating = rating * 2
    real_rating = real_rating + 1
    local stars = ''
    for s=1,rating do
        stars = stars .. '*'
    end
    stars = stars .. '/*'

    mp.commandv("run", "setfattr", "-n", "user.baloo.rating", "-v", real_rating, final_path)
    mp.commandv("show-text", "Rated " .. stars, 1500)
end

mp.register_script_message("rate-file", on_rate_file)
mp.register_script_message("rate-file-shift", on_rate_file_shift)
