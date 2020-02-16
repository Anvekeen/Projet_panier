{*fait en classe avant pour marquer les emplacements*}
<div id="content">

{*jumbotron*}
<div class="jumbotron text-center mb-0 p-2">
    <h1 class="display-2 text-danger ">Bienvenue sur Derix!</h1>
    <p class="lead">Retrouvez sur ce site tous nos produits, notre newsletter ainsi que l'incontournable FAQ! </p>
    <hr class="my-4">
	

	<div class="liste produits">
	<div class="row">
        {foreach $products as $product}
            <div class="col-4">
                <div class="card border-dark" style="width: 80%;">
				<h5 class="card-header bg-dark text-center text-danger font-weight-bold">{$product->getName()}</h5>
                    <img src="./views/img/{$product->getId()}.jpg" class="card-img-top" alt="{$product->getName()}">
                    <div class="card-body bg-dark text-danger">
                        <h5 class="card-title">{$product->getName()}</h5>
                        <p class="card-text">{$product->getShortDescription()}</p>
                        <p class="card-text">{$product->getPrice()} €</p>
                    </div>
                    <div class="card-body">
                        <a href="#" class="btn">Details</a>
                        <a href="#" class="btn btn-outline-danger">Ajouter au panier</a>
                    </div>
                </div>
            </div>
        {/foreach}		
	</div>
</div>
	
    <a class="btn-xlarge btn-danger btn-lg mt-3" href="#" role="button">Tous nos produits</a>


</div>
</div>

