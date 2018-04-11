Edu project rbblog
====

[Sinatra](http://www.sinatrarb.com/)
[Twitter Bootstrap](http://getbootstrap.com/)


Heroku deploy
====
*Create app*
<pre>$ heroku create</pre>

*Push code*
<pre> $ git push heroku master </pre>

*Create db hobby-dev type (free)*
<pre>$ heroku addons:create heroku-postgresql:hobby-dev</pre>

*Migrate db*
<pre>$ heroku rake db:migrate </pre>