<main role="main">

    <div class=" ml-1 mr-1">

        <a class="btn btn-secondary border-dark my-4 ml-3" href="panier?delete">Supprimer le panier</a>

        <section>
            <h3>{if !$checker}Votre panier est vide !{/if}</h3>
            <div class="card-deck">
                {$total = 0}
                {foreach $smarty.session.panier as $c}
                    <div class="card border align-items-center border-danger rounded-0 mr-0 ">
                        <img class="card-img w-75" src="./views/img/{$c->getId()}.jpg"
                             alt="{$c->getName()}">
                    </div>
                    <div class="card text-center border border-danger border-left-0 rounded-0 ml-0">
                        <div class="card-body p-0">
                            <div class="card-title text-white bg-dark p-4 m-0">
                                {$c->getName()}
                            </div>
                            <br>
                            <div class="card-text text-black font-italic">{$c->getDescription()}</div>
                            <p class="card-text mt-5 text-black">Prix : {$c->getPrice()} €</p>
                            {$total = $total + ($c->getPrice())}
                        </div>
                    </div>
                {/foreach}
            </div>
            <span class="display-4"> Prix total : {$total}</span>
        </section>
    </div>

</main>