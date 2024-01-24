$("#togglePassword").on("click", function() {
    const passwordField = $("#password");
    const passwordFieldType = passwordField.attr("type");
    passwordField.attr("type", passwordFieldType === "password" ? "text" : "password");
    $(this).find("i").toggleClass("fa-eye-slash fa-eye");
});


$(function() {
    document.getElementById('dropdownListMatkul').innerHTML = "Algoritma & Pemrograman 1";
    document.getElementById('selectedMatkul').innerHTML = "Algoritma & Pemrograman 1";
    $(".daftar-matkul .dropdown-item-data").on("click", function() {
        document.getElementById('dropdownListMatkul').innerHTML = $(this).text();
        document.getElementById('selectedMatkul').innerHTML = $(this).text();
    })
})

