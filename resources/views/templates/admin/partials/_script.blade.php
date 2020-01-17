		<!-- <script src="{{ asset('public/assets/js/oneui.core.min.js') }}"></script> -->

        <!--
            OneUI JS

            Custom functionality including Blocks/Layout API as well as other vital and optional helpers
            webpack is putting everything together at assets/_es6/main/app.js
        -->
        <!-- <script src="{{ asset('public/assets/js/oneui.app.min.js') }}"></script> -->

        
        <script type="text/javascript" src="{{ asset('public/assets/bs4/js/jquery.dataTables.min.js')}}"></script>
        <script type="text/javascript" src="{{ asset('public/assets/bs4/js/dataTables.bootstrap4.min.js')}}"></script>
        <script type="text/javascript" src="{{ asset('public/assets/bs4/js/dataTables.fixedColumns.min.js')}}"></script>

        <!-- Page JS Plugins -->
        <!-- <script src="{{ asset('public/assets/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/datatables/dataTables.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/datatables/buttons/dataTables.buttons.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/datatables/buttons/buttons.print.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/datatables/buttons/buttons.html5.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/datatables/buttons/buttons.flash.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/datatables/buttons/buttons.colVis.min.js') }}"></script> -->

        <!-- Page JS Code -->
        <!-- <script src="{{ asset('public/assets/js/pages/be_tables_datatables.min.js') }}"></script> -->

        <!-- Page JS Plugins -->
        <script src="{{ asset('public/assets/js/plugins/jquery-validation/jquery.validate.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/jquery-validation/additional-methods.js') }}"></script>

        <!-- Page JS Helpers (Select2 plugin) -->
        

        <!-- Page JS Code -->
        <script src="{{ asset('public/assets/js/pages/be_forms_validation.min.js') }}"></script>

        <!-- Page JS Plugins -->
        <script src="{{ asset('public/assets/js/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/select2/js/select2.full.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/jquery.maskedinput/jquery.maskedinput.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/ion-rangeslider/js/ion.rangeSlider.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/dropzone/dropzone.min.js') }}"></script>

        <!-- <script src="{{ asset('public/assets/js/plugins/jquery-ui-2/jquery-ui.min.js') }}"></script> -->


        <!-- Page JS Helpers (BS Datepicker + BS Colorpicker + BS Maxlength + Select2 + Masked Inputs + Ion Range Slider plugins) -->
        <script>jQuery(function(){ One.helpers(['datepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs', 'rangeslider']); });</script>

        <!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script> -->

        <!-- <script type="text/javascript" src="{{ asset('public/assets/js/jquery.dataTables.min.js')}}"></script> -->

        <!-- <script type="text/javascript" src="{{ asset('public/assets/js/dataTables.fixedColumns.min.js') }}"></script>
            <script type="text/javascript" src="{{ asset('public/assets/js/plugins/jquery.maskedinput/jquery.maskedinput.min.js') }}"></script> -->

        <!-- <script type="text/javascript">
            $(document).ready(function() {
                var table = $('#tb_rekap').DataTable( {
                    scrollY:        "500px",
                    scrollX:        true,
                    scrollCollapse: true,
                    paging:         false,
                    
                    fixedColumns:   {
                        leftColumns: 3
                    },

                } );
            } );
        </script> -->

        <script type="text/javascript">
            $(document).ready(function() {
                var table = $('#tb_rekap').DataTable( {
                    scrollY:        "70vh",
                    scrollX:        true,
                    scrollCollapse: true,
                    paging:         true,
                    pageLength: 25,
                    fixedColumns:   {
                        leftColumns: 3
                    }
                } );
            } );
        </script>
        <script type="text/javascript">
            $(document).ready(function() {
                var table = $('#tb_dealer').DataTable( {
                    scrollY:        "80vh",
                    scrollX:        true,
                    scrollCollapse: true,
                    paging:         true,
                    pageLength: 50,
                    fixedColumns:   {
                        leftColumns: 3
                    }
                    
                } );
            } );
        </script>

        <script type="text/javascript">
            var rupiah = document.getElementById("rupiah");
            rupiah.addEventListener("keyup", function(e) {

              rupiah.value = formatRupiah(this.value, "Rp. ");
          });

            
            function formatRupiah(angka, prefix) {
              var number_string = angka.replace(/[^,\d]/g, "").toString(),
              split = number_string.split(","),
              sisa = split[0].length % 3,
              rupiah = split[0].substr(0, sisa),
              ribuan = split[0].substr(sisa).match(/\d{3}/gi);


              if (ribuan) 
              {
                separator = sisa ? "." : "";
                rupiah += separator + ribuan.join(".");}

                rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;
                return prefix == undefined ? rupiah : rupiah ? "Rp. " + rupiah : "";
            }

        </script>

        <script type="text/javascript">
            $("#thn_kendaraan").datepicker({
                format: "yyyy",
                viewMode: "years", 
                minViewMode: "years",
                autoclose: true
                


            });
        </script>

        <script src="{{ asset('public/assets/js/plugins/jquery-validation/jquery.validate.min.js') }}"></script>
        <script src="{{ asset('public/assets/js/plugins/jquery-validation/additional-methods.js') }}"></script>
        <!-- Page JS Code -->
        <script src="{{ asset('public/assets/js/pages/be_forms_validation.min.js') }}"></script>
        <!-- <script src="{{ asset('public/assets/js/plugins/jquery-validation/localization/message_id.js') }}"></script> -->
        <script src="{{ asset('public/assets/js/plugins/jquery-validation/localization/messages_id.js') }}"></script>



