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
            <script src="https://cdn.datatables.net/plug-ins/1.10.20/dataRender/datetime.js"></script>

            <script type="text/javascript">

                $(document).ready(function() {
                    var table = $('#tb_dealer').DataTable( {
                        scrollY:        "70vh",
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
                $(document).ready(function() {
                  var dTable = $('#tb_sales_rekap').dataTable( {
                    scrollY:        "80vh",
                    scrollX:        true,
                    scrollCollapse: true,
                    paging:         true,
                    pageLength: 50,
                    fixedColumns:   {
                        leftColumns: 3
                    }
                } );
              });
          </script>


          <script src="{{ asset('public/assets/js/plugins/jquery-validation/jquery.validate.min.js') }}"></script>
          <script src="{{ asset('public/assets/js/plugins/jquery-validation/additional-methods.js') }}"></script>
          <!-- Page JS Code -->
          <script src="{{ asset('public/assets/js/pages/be_forms_validation.min.js') }}"></script>
          <!-- <script src="{{ asset('public/assets/js/plugins/jquery-validation/localization/message_id.js') }}"></script> -->
          <script src="{{ asset('public/assets/js/plugins/jquery-validation/localization/messages_id.js') }}"></script>

          <script type="text/javascript">
            //DEALER AJAX
            $(function () {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                // view data
                var table = $('#tb_dealer_2').DataTable({
                    scrollY:        "70vh",
                    scrollX:        true,
                    scrollCollapse: true,
                    pageLength: 50,
                    fixedColumns:   {
                        leftColumns: 3
                    },
                    lengthMenu: [ 10, 25, 50, 75, 100, 125, 150 ],
                    processing: true,
                    serverSide: true,
                    language: {
                        processing: '<div class="wobblebar-loader"></div>',
                        sEmptyTable:   "Tidak ada data yang tersedia pada tabel ini",
                        sLengthMenu:   "Tampilkan _MENU_ entri",
                        sZeroRecords:  "Tidak ditemukan data yang sesuai",
                        sInfo:         "Menampilkan _START_ sampai _END_ dari _TOTAL_ entri",
                        sInfoEmpty:    "Menampilkan 0 sampai 0 dari 0 entri",
                        sInfoFiltered: "(disaring dari _MAX_ entri keseluruhan)",
                        sInfoPostFix:  "",
                        sSearch:       "Cari:",
                        sUrl:          "",
                        oPaginate: {
                            sFirst:    "Pertama",
                            sPrevious: "Sebelumnya",
                            sNext:     "Selanjutnya",
                            sLast:     "Terakhir"
                        }
                    },
                    ajax: "{{ route('admin.dealer_ajax.index') }}",
                    columns: [
                    {data: 'DT_RowIndex', name: 'DT_RowIndex', sClass: 'text-center'},
                    {data: 'id_dealer', name: 'id_dealer', sClass: 'text-center'},
                    {data: 'nama_dealer', name: 'nama_dealer', sClass: 'text-center', defaultContent: '<i>Tidak Ada</i>'},
                    {data: 'alamat', name: 'alamat', sClass: 'text-left', defaultContent: '<i>Tidak Ada</i>'},
                    {data: 'kota', name: 'kota', sClass: 'text-center', defaultContent: '<i>Tidak Ada</i>'},
                    {data: 'provinsi', name: 'provinsi', sClass: 'text-center', defaultContent: '<i>Tidak Ada</i>'},
                    {data: 'kontak_person', name: 'kontak_person', sClass: 'text-center', defaultContent: '<i>Tidak Ada</i>'},
                    {data: 'no_telp', name: 'no_telp', sClass: 'text-center', defaultContent: '<i>Tidak Ada</i>'},
                    {data: 'status', name: 'status', sClass: 'text-center', orderable: false, searchable: false},
                    {data: 'print', name: 'print', sClass: 'text-center', orderable: false, searchable: false},
                    {data: 'aksi', name: 'aksi', sClass: 'text-center nowrap', orderable: false, searchable: false},
                    ]
                });


                // add data
                $('#add_dlr_btn').click(function () {
                    $('#add_dlr_savebtn').html("Simpan");
                });

                $('#add_dlr_form').on('submit', function(e) {
                    e.preventDefault();
                    $('#add_dlr_savebtn').html('Mengirim..');
                    $.ajax({
                        data: $('#add_dlr_form').serialize(),
                        url: "{{ route('admin.dealer_ajax.store') }}",
                        type: "POST",
                        dataType: 'json',
                        success: function (data) {
                            $('#add_dlr_form').trigger("reset");
                            $('#add_dlr_modal').modal('hide');
                            $('#alert_dlr').html('<div class="alert alert-success alert-dismissable d-flex" role="alert"><div class="flex-00-auto"><i class="fa fa-fw fa-check"></i></div><div class="flex-fill ml-3"><p class="mb-0">' + data.success + '</p></div><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
                            table.draw();
                            setTimeout(function() {
                                $(".alert").alert('close');
                            }, 8000);
                        },
                        error: function (data) {
                          console.log('Error:', data);
                          $('#add_dlr_savebtn').html('Save Changes');
                      },

                  });
                });

                //delete data
                var dlr_id;

                $(document).on('click', '.delete_dlr', function(){
                    dlr_id = $(this).attr('id');
                    dlr_id_dealer = $(this).attr('id_dealer');
                    dlr_nama_dealer = $(this).attr('nama_dealer');
                    $('#delete_message_dlr').html('Hapus data dealer <b>'+ dlr_nama_dealer +'</b> dengan ID Dealer <b>'+ dlr_id_dealer +'</b> ?')
                    $('#confirm_delete_dlr_btn').html("Hapus");

                });

                $('#confirm_delete_dlr_btn').click(function(){
                    $.ajax({
                        url:"dealer/destroy/"+dlr_id,
                        beforeSend:function(){
                            $('#confirm_delete_dlr_btn').text('Menghapus..');
                        },
                        success:function(data)
                        {
                            setTimeout(function(){
                                $('#confirm_delete_modal_dlr').modal('hide');
                            }, 250);
                            table.draw();
                            $('#alert_dlr').html('<div class="alert alert-success alert-dismissable d-flex" role="alert"><div class="flex-00-auto"><i class="fa fa-fw fa-check"></i></div><div class="flex-fill ml-3"><p class="mb-0">' + data.success + '</p></div><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
                            setTimeout(function() {
                                $(".alert").alert('close');
                            }, 8000);
                        }
                    })
                });

                //edit data
                $(document).on('click', '.edit_dlr', function(){
                    var id_dlr = $(this).attr('id');
                    $.ajax({
                        url :"dealer/edit/"+ id_dlr,
                        dataType:"json",
                        success:function(data)
                        {
                            $('#nama_dealer_edit').val(data.result.nama_dealer);
                            $('#alamat_edit').val(data.result.alamat);
                            $('#kota_edit').val(data.result.kota);
                            $('#provinsi_edit').val(data.result.provinsi);
                            $('#kontak_person_edit').val(data.result.kontak_person);
                            $('#no_telp_edit').val(data.result.no_telp);
                            $('#hidden_id_dlr').val(id_dlr);
                        }
                    })
                    $('#edit_dlr_savebtn').html("Simpan");
                });

                //update
                $('#edit_dlr_form').on('submit', function(e) {
                    e.preventDefault();
                    $('#edit_dlr_savebtn').html('Mengirim..');
                    $.ajax({
                        data: $('#edit_dlr_form').serialize(),
                        url: "{{ route('admin.dealer_ajax.update') }}",
                        type: "PATCH",
                        dataType: 'json',
                        success: function (data) {
                            $('#edit_dlr_form').trigger("reset");
                            $('#edit_modal_dlr').modal('hide');
                            $('#alert_dlr').html('<div class="alert alert-success alert-dismissable d-flex" role="alert"><div class="flex-00-auto"><i class="fa fa-fw fa-check"></i></div><div class="flex-fill ml-3"><p class="mb-0">' + data.success_edit + '</p></div><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
                            table.draw();
                            setTimeout(function() {
                                $(".alert").alert('close');
                            }, 8000);
                        },
                        error: function (data) {
                          console.log('Error:', data);
                          $('#edit_dlr_savebtn').html('Save Changes');
                      },

                  });
                });

                //ON Dealer
                var dlr_on_id;
                $(document).on('click', '.on_dlr', function(){
                    dlr_on_id = $(this).attr('id');
                    dlr_on_id_dealer = $(this).attr('id_dealer');
                    dlr_on_nama_dealer = $(this).attr('nama_dealer');
                    $('#on_message_dlr').html('Aktifkan dealer <b>'+ dlr_on_nama_dealer +'</b> dengan ID Dealer <b>'+ dlr_on_id_dealer +'</b> ?')
                    $('#on_dlr_btn').html("Aktif");
                });

                $('#on_dlr_btn').click(function(){
                    $.ajax({
                        url:"dealer/on/"+dlr_on_id,
                        beforeSend:function(){
                            $('#on_dlr_btn').text('Mengaktifkan..');
                        },
                        success:function(data)
                        {
                            setTimeout(function(){
                                $('#on_modal_dlr').modal('hide');
                            }, 250);
                            table.draw();
                            $('#alert_dlr').html('<div class="alert alert-success alert-dismissable d-flex" role="alert"><div class="flex-00-auto"><i class="fa fa-fw fa-check"></i></div><div class="flex-fill ml-3"><p class="mb-0">' + data.success_on + '</p></div><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
                            setTimeout(function() {
                                $(".alert").alert('close');
                            }, 8000);
                        }
                    })
                });


                //OFF Dealer
                var dlr_off_id;
                $(document).on('click', '.off_dlr', function(){
                    dlr_off_id = $(this).attr('id');
                    dlr_off_id_dealer = $(this).attr('id_dealer');
                    dlr_off_nama_dealer = $(this).attr('nama_dealer');
                    $('#off_message_dlr').html('Non-aktifkan dealer <b>'+ dlr_off_nama_dealer +'</b> dengan ID Dealer <b>'+ dlr_off_id_dealer +'</b> ?')
                    $('#off_dlr_btn').html("Non-aktikan");
                });

                $('#off_dlr_btn').click(function(){
                    $.ajax({
                        url:"dealer/off/"+dlr_off_id,
                        beforeSend:function(){
                            $('#off_dlr_btn').text('Menon-aktifkan..');
                        },
                        success:function(data)
                        {
                            setTimeout(function(){
                                $('#off_modal_dlr').modal('hide');
                            }, 250);
                            table.draw();
                            $('#alert_dlr').html('<div class="alert alert-success alert-dismissable d-flex" role="alert"><div class="flex-00-auto"><i class="fa fa-fw fa-check"></i></div><div class="flex-fill ml-3"><p class="mb-0">' + data.success_off + '</p></div><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
                            setTimeout(function() {
                                $(".alert").alert('close');
                            }, 8000);
                        }
                    })
                });


            });
        </script>
        <script type="text/javascript">
            $(function () {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                function convertDate(dateString){
                    var p = dateString.split(/\D/g)
                    return [p[2],p[1],p[0] ].join("-")
                }

                // view data
                load_data();

                function load_data(from_date = '', to_date = '')
                {
                    var table = $('#tb_sales_rekap2').DataTable({
                        scrollY:        "70vh",
                        scrollX:        true,
                        scrollCollapse: true,
                        pageLength: 50,
                        lengthMenu: [ 10, 25, 50, 75, 100 ],
                        processing: true,
                        serverSide: true,
                        language: {
                            processing: '<div class="wobblebar-loader"></div>',
                            sEmptyTable:   "Tidak ada data yang tersedia pada tabel ini",
                            sLengthMenu:   "Tampilkan _MENU_ entri",
                            sZeroRecords:  "Tidak ditemukan data yang sesuai",
                            sInfo:         "Menampilkan _START_ sampai _END_ dari _TOTAL_ entri",
                            sInfoEmpty:    "Menampilkan 0 sampai 0 dari 0 entri",
                            sInfoFiltered: "(disaring dari _MAX_ entri keseluruhan)",
                            sInfoPostFix:  "",
                            sSearch:       "Cari:",
                            sUrl:          "",
                            oPaginate: {
                                sFirst:    "Pertama",
                                sPrevious: "Sebelumnya",
                                sNext:     "Selanjutnya",
                                sLast:     "Terakhir"
                            }
                        },
                        ajax: {
                            url:'{{ route("admin.salesrekap_ajax.index") }}',
                            data:{from_date:from_date, to_date:to_date}
                        },
                        columns: [
                        {data: 'DT_RowIndex', name: 'DT_RowIndex', sClass: 'text-center'},
                        {data: 'nik', name: 'nik', sClass: 'text-center nowrap'},
                        {data: 'nama', name: 'nama', sClass: 'text-center nowrap', defaultContent: '<i>Tidak Ada</i>'},
                        {data: 'nama_dealer2', name: 'nama_dealer2', sClass: 'text-center'},
                        {data: 'd_alamat2', name: 'd_alamat2', sClass: 'text-center'},
                        {data: 'tgl_kunjungan2', name: 'tgl_kunjungan2', sClass: 'text-center'},
                        {data: 'lokasi', name: 'lokasi', sClass: 'text-center', orderable: false, searchable: false},
                        ]


                    });
                }


                $('#filter').click(function(){
                    var from_date = convertDate($('#from_date').val());
                    var to_date = convertDate($('#to_date').val());
                    if($('#from_date').val() != '' &&  $('#to_date').val() != '')
                    {
                        $('#tb_sales_rekap2').DataTable().destroy();
                        load_data(from_date, to_date);
                    }
                    else
                    {
                        alert('Harap isi terlebih dahulu keduanya!');
                    }
                });

                $('#refresh').click(function(){
                  $('#from_date').val('');
                  $('#to_date').val('');
                  $('#tb_sales_rekap2').DataTable().destroy();
                  load_data();
              });

            });
        </script>




