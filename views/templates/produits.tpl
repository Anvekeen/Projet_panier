<main role="main" class="">

    <section>
        <h1 class="display-4 color-danger text-center">Catégories</h1>

        <div class="card-group">

            <div class="card" style="width: 15rem;">
                <img class="card-img-top" src="./views/img/slide1.jpeg" alt="Card image cap">
                <div class="card-body">
                    <h1><a class="card-link" href="produits">Toutes les <br> catégories</a></h1>
                </div>
            </div>

            <div class="card" style="width: 15rem;">
                <img class="card-img-top" src="./views/img/slide2.jpeg" alt="Card image cap">
                <div class="card-body">
                    <h1><a class="card-link" href="produits?categorie=4">Pulls</a></h1>
                </div>
            </div>

            <div class="card" style="width: 15rem;">
                <img class="card-img-top" src="./views/img/slide3.jpeg" alt="Card image cap">
                <div class="card-body">
                    <h1><a class="card-link" href="produits?categorie=2">Robes</a></h1>
                </div>
            </div>

            <div class="card" style="width: 15rem;">
                <img class="card-img-top" src="./views/img/slide4.jpeg" alt="Card image cap">
                <div class="card-body">
                    <h1><a class="card-link" href="produits?categorie=3">T-shirts</a></h1>
                </div>
            </div>

            <div class="card" style="width: 15rem;">
                <img class="card-img-top" src="./views/img/slide5.jpeg" alt="Card image cap">
                <div class="card-body">
                    <h1><a class="card-link" href="produits?categorie=1">Jeans</a></h1>
                </div>
            </div>
        </div>

        </div>

    </section>



    <section>
        <div class="row mt-5">

            {foreach $products as $product}
                {if !$categorie}
                    <div class="col-2">
                        <div class="card-deck h-100">
                            <div class="card mb-3 text-center border-dark">
                                <div class="card-body p-0"
                                     style="position:relative">  {* style ajouté pour ne pas étendre le lien en bas de l'img*}
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
                                    <a href="produit?id={$product->getId()}"
                                       class="btn btn-outline-danger btn-lg mr-3 mb-2">
                                        Plus d'info</a>
                                    <button class="btn btn-outline-dark btn-lg ml-3 mb-2" type="submit" value="Submit">
                                        Ajouter au panier
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                {elseif $product->getProdcatid() == $categorie}
                    <div class="col-2">
                        <div class="card-deck h-100">
                            <div class="card mb-3 text-center border-dark">
                                <div class="card-body p-0"
                                     style="position:relative">  {* style ajouté pour ne pas étendre le lien en bas de l'img*}
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
                                    <a href="produit?id={$product->getId()}"
                                       class="btn btn-outline-danger btn-lg mr-3 mb-2">
                                        Plus d'info</a>
                                    <button class="btn btn-outline-dark btn-lg ml-3 mb-2" type="submit" value="Submit">
                                        Ajouter au panier
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    {else}La caté n'existe pas
                {/if}
            {/foreach}
        </div>
    </section>

    <aside>
        <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </nav>
    </aside>

</main>