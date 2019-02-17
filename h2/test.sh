#!/bin/bash

curl http://aironbrasil.com.br/h2/login.jsp -u airon:41r0n -s | grep location.href ; curl http://aironbrasil.com.br/h2/login2.jsp -u airon:41r0n -s | grep location.href
curl http://aironbrasil.com.br/h2/index.jsp -u airon:41r0n -s | grep location.href ; curl http://aironbrasil.com.br/h2/index2.jsp -u airon:41r0n -s | grep location.href
