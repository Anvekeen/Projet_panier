<main role="main" class="mt-auto">

    <section>
        <div class="container">
            <form class="" action="contact" method="post" id="formulaire" onsubmit="return envoiFormulaire()">
                <h2 class="display-4 text-center"> Contactez-nous !</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="nom" class="col-form-label">Nom :</label>
                        <input type="text" required name="nom" class="form-control" id="nom" placeholder="Nom">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="prenom" class="col-form-label">Prénom :</label>
                        <input type="text" required name="prenom" class="form-control" id="prenom" placeholder="Prénom">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-form-label">Email :</label>
                    <input type="email" required name="email" class="form-control" id="email" placeholder="abc@def.com">
                </div>
                <div class="form-group">
                    <fieldset>
                        <label for="numerotel1" class="col-form-label">Téléphone (fixe ou portable) :</label><br>
                        <input type="tel" required name="numerotel1" id="numerotel1" placeholder="0400"
                               pattern="[0-9]{literal}{3,4}{/literal}" minlength="3" maxlength="4"> /
                        <label for="numerotel2"></label>
                        <input type="tel" required name="numerotel2" id="numerotel2" placeholder="000000"
                               pattern="[0-9]{literal}{6}{/literal}" minlength="6" maxlength="6">
                    </fieldset>
                </div>
                <div class="form-group">
                    <label for="contenu" class="col-form-label">Votre message :</label>
                    <textarea required class="form-control" name="contenu" placeholder="Votre texte ici..."
                              id="contenu" rows="10" oninput="checkTextLength()" maxlength="500"></textarea>
                    <span> Nombre de caractères restants : <span id="charNum">500</span></span>
                </div>
                <button type="submit" class="btn btn-primary">Envoyer</button>
                <button type="reset" class="btn btn-primary">Réinitialiser</button>
            </form>
        </div>
    </section>

</main>