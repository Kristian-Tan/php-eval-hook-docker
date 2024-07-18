# PHP-Eval-Hook-Docker

Docker version of https://github.com/extremecoders-re/php-eval-hook

If you're like me and do not want to compile C source code into php extension .dll/.so file; but want to analyze php file obfuscated by eval loop

Then this repository is for you:

Dockerhub link: https://hub.docker.com/r/krstian/php-eval-hook-docker

## Requirement:
- docker engine (that's all)

## Optional:
- (optional) docker compose: if you want to build the image yourself
- image php:7.2.24-buster (chosen because the released prebuilt binary v0.1 is for php.7.2.24 in https://github.com/extremecoders-re/php-eval-hook/releases/tag/v0.1 )
- file `evalhook.so`: taken from released prebuilt binary from original repository above

## Usage 

#### build it yourself
- git clone https://github.com/Kristian-Tan/php-eval-hook-docker.git
- cd php-eval-hook-docker
- docker-compose build
- docker tag php-eval-hook-docker krstian/php-eval-hook-docker
- docker push krstian/php-eval-hook-docker

#### dockerhub image
- docker pull krstian/php-eval-hook-docker

#### usage
- docker run --rm --name php-eval -it krstian/php-eval-hook-docker
- require_once("/tmp/eval_save_echo.php");
- echo eval('return 1+3;');
