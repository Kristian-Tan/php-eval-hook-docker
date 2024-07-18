FROM php:7.2.24-buster
COPY evalhook.so /tmp/evalhook.so
COPY eval_save.php /tmp/eval_save.php
COPY eval_echo.php /tmp/eval_echo.php
COPY eval_save_echo.php /tmp/eval_save_echo.php
COPY eval_save_dry.php /tmp/eval_save_dry.php
COPY eval_echo_dry.php /tmp/eval_echo_dry.php
COPY eval_save_echo_dry.php /tmp/eval_save_echo_dry.php
RUN echo 'extension=/tmp/evalhook.so' >> /usr/local/etc/php/php.ini
