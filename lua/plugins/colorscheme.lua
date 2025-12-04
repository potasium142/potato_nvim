return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function(_,opts)
			local everforest = require("everforest")
			everforest.setup(opts)
			everforest.load()
			
  end,
}
