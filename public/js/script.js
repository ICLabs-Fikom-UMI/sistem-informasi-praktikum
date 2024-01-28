$("#togglePassword").on("click", function() {
    const passwordField = $("#password");
    const passwordFieldType = passwordField.attr("type");
    passwordField.attr("type", passwordFieldType === "password" ? "text" : "password");
    $(this).find("i").toggleClass("fa-eye-slash fa-eye");
});

function deleteLaboratorium(id){
    console.log('Halo');
    $('.modal-body').html('Apakah anda yakin ingin menghapus data ini?');       
    $('.tombol').html('<a href="<?= BASEURL?>/laboratorium/deletelaboratorium/'+ id +'" class="btn btn-primary w-25"');
    $('#close').html('Batal');
}  