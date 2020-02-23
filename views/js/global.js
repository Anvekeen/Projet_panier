function envoiFormulaire() {
    alert('Message envoyé !');
    onsubmit.reset(); // donne l'impression qu'on a envoyé... ;)
    return false; //do not submit the form
}

function checkTextLength()
{
    $('textarea').on("input keyup", function(){
        const maxlength = $(this).attr("maxlength");
        let currentLength = $(this).val().length;

        if (currentLength > maxlength){
            console.log("You have reached the maximum number of characters.");
        } else {
            $('#charNum').text(maxlength - currentLength);
        }
    });
}