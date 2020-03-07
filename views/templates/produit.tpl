<main role="main" class="mt-auto">

    <section>
        <div class="card-deck ml-5 mr-5">
            {foreach $products as $product}
                {if $product->getId() == $id}
                    <div class="card border align-items-center border-danger rounded-0 mr-0 ">
                        <img class="card-img w-75" src="./views/img/{$product->getId()}.jpg"
                             alt="{$product->getName()}">
                    </div>
                    <div class="card text-center border border-danger border-left-0 rounded-0 ml-0">
                        <div class="card-body p-0">
                            <h1 class="card-title text-white bg-dark p-4 m-0">
                                {$product->getName()}
                            </h1>
                            <br>
                            <h4 class="card-text text-black font-italic">{$product->getDescription()}</h4>
                            <p class="card-text mt-5 text-black">Prix : {$product->getPrice()} €</p>
                            <div class="form-group">
                                <label for="Taille" class="mb-0">Choisissez une taille...</label>
                                <select class="form-control m-auto col-4" id="Taille">
                                    <option>S</option>
                                    <option>M</option>
                                    <option>L</option>
                                    <option>XL</option>
                                </select>
                            </div>
                            <br>
                            <a class="btn btn-outline-dark btn-lg" href="panier?add={$product->getId()}">
                                Ajouter au panier
                            </a>
                        </div>
                    </div>
                {/if}
            {/foreach}
        </div>
    </section>

</main>
