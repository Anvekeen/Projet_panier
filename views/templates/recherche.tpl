<section>
    <div class="row mt-5">
        {foreach $achercher as $product}
        <div class="col-2">
            <div class="card-deck h-100">
            <div class="card mb-3 text-center border-dark">
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
            </div>
        </div>
        {/foreach}
    </div>
</section>