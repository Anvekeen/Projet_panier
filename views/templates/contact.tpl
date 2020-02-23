<form class="" action="contact" method="post">
    <div class="container">
        <h2 class="display-4 text-center"> Contactez-nous !</h2>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="nom">Nom (requis)</label>
                <input type="text" required name="nom" class="form-control" id="nom">
            </div>
            <div class="form-group col-md-6">
                <label for="prenom">Prénom (requis)</label>
                <input type="text" required name="prenom" class="form-control" id="prenom">
            </div>
        </div>
        <div class="form-group">
            <label for="email">Mail (requis - doit être une adresse mail)</label>
            <input type="email" required name="email" class="form-control" id="email" placeholder="abc@def.com">
        </div>
        <div class="form-group">
            <fieldset>
                <label for="numerotel1">Téléphone (requis – doit avoir un format téléphone)</label><br>
                <input type="number" required name="numerotel1" id="numerotel1" placeholder="0400" maxlength="4"> /
                <label for="numerotel2"></label>
                <input type="number" required name="numerotel2" id="numerotel2" placeholder="000000" maxlength="6">
            </fieldset>
        </div>
        <div class="form-group">
            <label for="contenu">Sujet (requis – pas plus de X caractères, afficher le nombre restant à
                l’utilisateur
                pendant la saisie)</label>
            <textarea required class="form-control" name="contenu" placeholder="Votre texte ici..." id="contenu" rows="10"></textarea>
        </div>

        <button type="submit" class="btn btn-primary">Envoyer</button>
        <button type="reset" class="btn btn-primary">Réinitialiser</button>
</form>
</div>


<div class="form_container">
    <form id="myform" onsubmit="return handle_form_submission()">
        <input type="text" name='name' id='name' placeholder='Name'/>
        <button type='submit'>Post it</button>
    </form>
</div>

<script type="text/javascript">
    function msg() {
        alert("Hello java");
    }
</script>

<form>
    <input type="button" value="click" onclick="msg()"/>
</form>

<script>
    function handle_form_submission() {
        alert('Submit button pressed');
        return false; //do not submit the form
    }
</script>


Resources1×0.5×0.25×Rerun


◦ Doit permettre l’envoi d’un mail à l’administrateur du site, contenant les données
encodée par l’utilisateur.
◦ Doit gérer les erreurs d’encodage dans le formulaire (champs requis, mauvais format,
etc)
