        </div>

        <div class="modal fade" id="modalConfirm" tabindex="-1" aria-labelledby="modalConfirmLabel" aria-hidden="true">
        <div id="modal-size" class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content w-75">
            <div class="modal-body text-center">
                ...
            </div>
            <div class="modal-footer border-0 justify-content-center">
                <button id="close" type="button" class="btn btn-secondary w-25" data-bs-dismiss="modal">Batal</button>
                <a class="btn btn-primary w-25" id="confirm" href="#">Ya</a> 
            </div>
            </div>
        </div>
        </div>

        <script>

        function deleteData(controller, func, id){
            $('.modal-body').html('Apakah anda yakin ingin menghapus data ini?');       
            $('#confirm').attr('href', '<?= BASEURL?>/' + controller + '/' + func + '/' + id);
            $('#close').html('Batal');
        }  

        function resetPassword(controller, func, id, pass) {
            $('.modal-body').html('Apakah anda yakin ingin mereset password ini?');       
            $('#confirm').attr('href', '<?= BASEURL?>/' + controller + '/' + func + '/' + id + '/' + pass);
            $('#close').html('Batal');
        }

        </script>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.5/xlsx.full.min.js"></script>
        <script>new DataTable('#dataTable');</script>
        <script src="<?= BASEURL; ?>/js/bootstrap/bootstrap.js"></script>
        <script src="<?= BASEURL; ?>/js/script.js"></script>
    </body>
</html>