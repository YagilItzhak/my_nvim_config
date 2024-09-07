require('flow').setup {
  output = {
    buffer = true,
    size = 80,
    focused = true,
    modifiable = false,
  },
  filetype_cmd_map = {
    python = "python3 <<-EOF\n%s\nEOF",
  },
  -- Commented out the database config since it's not needed for your setup
  -- If you have a db_config.json file, change the path below to /Users/yagilitzhak/.db_config.json
  -- sql_configs = require('flow.util').read_sql_config('/Users/yagilitzhak/.db_config.json'), 
  custom_cmd_dir = "/Users/yagilitzhak/.flow_cmds",  -- Update to your home directory
}

