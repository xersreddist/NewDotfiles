vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_header =  {
  [[                                                                     ]],
  [[   _  __ __________  _____    ____  __________  ____  _______________]],
  [[  | |/ // ____/ __ \/ ___/   / __ \/ ____/ __ \/ __ \/  _/ ___/_  __/]],
  [[  |   // __/ / /_/ /\__ \   / /_/ / __/ / / / / / / // / \__ \ / /   ]],
  [[ /   |/ /___/ _, _/___/ /  / _, _/ /___/ /_/ / /_/ // / ___/ // /    ]],
  [[/_/|_/_____/_/ |_|/____/  /_/ |_/_____/_____/_____/___//____//_/     ]],
  [[                                                                     ]],
}

vim.g.dashboard_custom_section = {
  a = {description = {'  Find File               Space + f'}, command = 'Telescope find_files'},
  d = {description = {'  Search Text             Space + t '}, command = 'Telescope live_grep'},
  b = {description = {'  Recent Files            Space + r'}, command = 'Telescope oldfiles'},
  e = {description = {'  Config                  Space + E'}, command = 'edit ~/appdata/local/nvim/init.lua'}
}

vim.g.dashboard_custom_footer = {'Keep simple '}
