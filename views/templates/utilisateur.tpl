<main role="main">

    <section>
        <div class="container mt-3">
            <form action="utilisateur" method="post" id="connexion">
                <div class="form-group">
                    <label for="NomUtilisateur" class="col-form-label">Nom d'utilisateur :</label>

                    <input type="text" required class="form-control" name="NomUtilisateur" id="NomUtilisateur"
                           placeholder="Nom d'utilisateur">
                </div>
                <div class="form-group">
                    <label for="MotdePasse" class="col-form-label">Mot de passe :</label>
                    <input type="password" required class="form-control" name="MotdePasse" id="MotdePasse"
                           aria-describedby="aideMotDePasse" placeholder="Mot de passe" minlength="6">
                    <small id="aideMotDePasse" class="form-text text-muted">
                        Votre mot de passe doit contenir 6 caractères minimum et ne doit pas contenir d'espaces ou de
                        caractères
                        spéciaux.
                    </small>
                </div>
                <button type="submit" class="btn btn-primary">Envoyer</button>
            </form>
            <h4>{$checker}</h4>
        </div>
    </section>

</main>