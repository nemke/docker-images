<h1>
	docker-images
</h1>

<h2>
	Requirements:
</h2>
<ul>
	<li>docker</li>
	<li>docker-compose</li>
</ul>

<h2>
	Centos 6 Images
</h2>
<p>
	Every image is dependent on centos6/base image, so it need to be compiled first.
</p>
<code>
	cd centos6/base && docker build -t centos6/base .
</code>

<ul>
	<li>
		<p>
			Nginx 1.99 image:
		</p>
		<code>
			cd centos6/nginx && docker build -t centos6/nginx .
		</code>
	</li>
	<li>
		<p>
			PHP 5.6 image:
		</p>
		<code>
			cd centos6/php56 && docker build -t centos6/php56 .
		</code>
	</li>
	<li>
		<p>
			PHP 7.0 image:
		</p>
		<code>
			cd centos6/php70 && docker build -t centos6/php70 .
		</code>
	</li>
	<li>
		<p>
			MySQL 5.6 image:
		</p>
		<code>
			cd centos6/mysql56 && docker build -t centos6/mysql56 .
		</code>
	</li>
	<li>
		<p>
			Nginx 1.99/PHP FPM 5.6 image:
		</p>
		<code>
			cd centos6/nginx-php-fpm56 && docker build -t centos6/nginx-php-fpm56 .
		</code>
	</li>
</ul>
