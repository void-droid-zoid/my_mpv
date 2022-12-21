local utils = require "mp.utils"


function on_start()
    local work_dir = mp.get_property_native("working-directory")
    local path = mp.get_property("path")
    local file_path = mp.get_property_native("path")
    local final_path = utils.join_path(work_dir, file_path)

    print(path)
    print(file_path)
    mp.commandv("run", "/MediaFiles/DATA/tag-watched.zsh", final_path)
   -- var result = mp.utils.subprocess({ args: ["/MediaFiles/DATA/tag-watched.zsh", path], cancellable: false })
    
    -- dump(result)
end
mp.register_event("start-file", on_start)