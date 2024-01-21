$("#togglePassword").on("click", function() {
    const passwordField = $("#password");
    const passwordFieldType = passwordField.attr("type");
    passwordField.attr("type", passwordFieldType === "password" ? "text" : "password");
    $(this).find("i").toggleClass("fa-eye-slash fa-eye");
});

