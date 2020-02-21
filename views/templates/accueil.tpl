<main role="main">

        {*jumbotron*}
        <section class="jumbotron text-center">
            <h1 class="display-2 text-black">Bienvenue sur Derix!</h1>
            <p class="lead">Retrouvez sur ce site tous nos produits, notre newsletter ainsi que l'incontournable
                FAQ! </p>
            <hr class="my-5">
            <a class="btn btn-xlarge btn-danger m-2" href="produits" role=button">Consultez tous les produits</a>
        </section>

    <section>
        <h2 class="text-center text-black">Nos articles phares :</h2>
        <br>
            <div class="card-deck">
                {foreach $products as $product}
                    <div class="card text-center border-dark">
                        <div class="card-body p-0" style="position:relative">  {* style ajouté pour ne pas étendre le lien en bas de l'img*}
                            <h5 class="card-title bg-dark font-weight-bold p-4 m-0">
                                <a class="stretched-link text-white" href="produit?id={$product->getId()}">
                                    {$product->getName()}</a>
                            </h5>
                            <img class="card-img p-0" src="./views/img/{$product->getId()}.jpg"
                                 alt="{$product->getName()}">
                        </div>
                        <hr class="mt-0">
                        <div class=card-body">
                            <p class="card-text text-black">{$product->getDescription()}</p>
                            <p class="card-text text-black">Prix : {$product->getPrice()} €</p>
                            <a href="produit?id={$product->getId()}" class="btn btn-outline-danger btn-lg mr-3 mb-2">
                                Plus d'info</a>
                            <button class="btn btn-outline-dark btn-lg ml-3 mb-2" type="submit" value="Submit">
                                Ajouter au panier
                            </button>
                        </div>
                    </div>
                {/foreach}
            </div>
    </section>

</main>

