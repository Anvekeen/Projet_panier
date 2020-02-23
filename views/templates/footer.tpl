	<footer class="mt-auto py-2 navbar navbar-light bg-light">
		<a class="navbar-brand" href="./accueil">
			<img src="views/img/derix.png" alt="logo du site" width="40" height="40">
		</a>
		{$active = 'active'}
		{$check = '<span class="sr-only">(current)</span>'}
		<ul class="navbar-nav">
				<li class="nav-item {if $title == 'contact'}{$active}{/if}">
					<a class="nav-link" href="contact">Contactez-nous !{if $title == 'contact'}{$check}{/if}</a>
				</li>
			</ul>



		<span class="navbar-text">
				 <strong>DERIX SPRL -
			Route de la grange 89,
					 1348 Louvain-la-Neuve</strong>
			</span>

		<span class="navbar-text">
			Téléphone : <strong>010/68.25.48</strong>

			Email : <strong>info@derix.be</strong>
		</span>

			<span class="navbar-text">
				 © 2020 Ifosup All rights Reserved
			</span>

	</footer>
</body>
</html>