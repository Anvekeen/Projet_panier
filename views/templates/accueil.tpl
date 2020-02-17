{*fait en classe avant pour marquer les emplacements*}
<div id="content">

    {*jumbotron*}
    <div class="jumbotron text-center p-5">
        <h1 class="display-2 text-black">Bienvenue sur Derix!</h1>
        <p class="lead">Retrouvez sur ce site tous nos produits, notre newsletter ainsi que l'incontournable FAQ! </p>
        <hr class="my-5">
        <a class="btn btn-xlarge btn-danger m-2" href="produits" role=button">Consultez tous les produits</a>
    </div>

    <h2 class="text-center text-black">Nos articles phares :</h2>

    <div class="liste produits mb-5">
        {*<div class="row m-5">*}

        <div class="card-deck" {*style="width: 80%;"*}>
            {foreach $products as $product}
                <div class="card border-dark text-center">
                    <a href="produit?id={$product->getId()}">
                    <h5 class="card-header bg-dark text-white font-weight-bold">{$product->getShortDescription()}</h5>
                    <img class="card-img" src="./views/img/{$product->getId()}.jpg" href="product" alt="{$product->getShortDescription()}">
                    <hr class="my-0">
                    <div class="card-body bg-light text-black">
                        <p class="card-text">{$product->getLongDescription()}</p>
                        <p class="card-text">{$product->getPrice()} €</p>
                    </div>
                    <div class="card-body">
                        <a href="#" class="card-link">Details</a>
                        <a href="#" class="btn btn-outline-dark">Ajouter au panier</a>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>

</div>
