Deface::Override.new(virtual_path:  "spree/home/index",
                     name:          "blocks_homepage",
                     replace: "[data-hook='homepage_products']",
                     text:          "<div class='homepage_blocks'><%= render @blocks %></div>",
                     disabled:      false)
