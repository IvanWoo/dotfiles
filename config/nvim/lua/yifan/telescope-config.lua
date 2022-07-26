local telescope = require("telescope")

telescope.setup{
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
    }
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      previewer = false,
    }
  }
}

require("telescope").load_extension "file_browser"

