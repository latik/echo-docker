FROM php:8-cli

RUN echo '<?php phpinfo();' | tee -a /var/www/index.php

ENTRYPOINT ["php", "-S", "0.0.0.0:8080", "/var/www/index.php"]