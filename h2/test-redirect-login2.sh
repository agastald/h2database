#!/bin/bash

curl -ns http://aironbrasil.com.br/h2/login.jsp | grep location.href
curl -ns http://aironbrasil.com.br/h2/login2.jsp | grep location.href
curl -ns http://aironbrasil.com.br/h2/index.jsp | grep location.href
curl -ns http://aironbrasil.com.br/h2/index2.jsp | grep location.href
