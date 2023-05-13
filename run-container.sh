#!/bin/bash

docker run -d --restart unless-stopped -e "NODE_ENV=fortinet_config" -v $(pwd)/fortinet_config.yaml:/juice-shop/config/fortinet_config.yaml -v $(pwd)/ftnt_favicon.ico:/juice-shop/frontend/dist/frontend/assets/public/ftnt_favicon.ico -v $(pwd)/ftnt_logo.png:/juice-shop/frontend/dist/frontend/assets/public/images/ftnt_logo.png -p 3000:3000 --name juice-shop bkimminich/juice-shop
