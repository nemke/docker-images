# docker-images

### Installation

- Requirements:
<ul>
	<li>docker</li>
	<li>docker-compose</li>
</ul>

- Creating images:
cd centos6/base && docker build -t centos6/base .
cd centos6/nginx && docker build -t centos6/nginx .
cd centos6/php56 && docker build -t centos6/php56 .
cd centos6/mysql56 && docker build -t centos6/mysql56 .