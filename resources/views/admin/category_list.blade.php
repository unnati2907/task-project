<link href="//cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet">
</head>
@extends('admin.layouts.data-table')

<body>


    @section('content')

    <div class="modal fade" id="categoryedit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>


                <div class="modal-body">
                    <form id="categoryform">
                        @csrf
                        <div class="form-group">
                            <input type="hidden" name="category_id" class="category_id" value="">


                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Category Name</label>
                            <input type="text" name="category_name" class=" form-control category_name" value="" aria-describedby="emailHelp" placeholder="Enter Category name">

                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Position</label>
                            <input type="text" class="form-control position" name="position" value="" placeholder="Enter position you want to display category">
                        </div>

                        <button type="submit" class="btn btn-primary update_category" id="update">Update category</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>


    <table class="category_table table-striped" border="2px">
        <thead>
            <tr>
                <th>Name</th>
                <th>position</th>
                <th>status</th>
                <th>Action</th>


            </tr>
        </thead>
        <tbody>
        </tbody>


    </table>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    @endsection
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.4/jquery-confirm.min.js"></script>
    <script>
        $(document).ready(function() {


            $('.category_table').DataTable().clear().destroy();

            $(".category_table").DataTable({
                serverSide: true,
                processing: true,
                searching: true,
                order: [],
                ajax: {

                    url: "/admin/dashboard/category/list/category_show",
                    type: "GET",

                },

                "columns": [

                    {
                        data: 'name'
                    },
                    {
                        data: 'position'
                    },
                    {
                        data: 'status'
                    },
                    {
                        data: 'actions'

                    },
                ]
            });

        });
        $(document).on("click", ".update_category", function() {

            //console.log(id);
            let myForm = document.getElementById('categoryform');
            console.log(myForm);
            var formData = new FormData(myForm);
            formData.append('_token', '{{ csrf_token() }}');
            $(this).attr('disabled', true);
            //console.log(formData);

            $.ajax({
                type: "post",
                url: "/category_update",
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function(response) {
                    console.log(response);
                }
            });

        });
        $(document).on("click", ".edit_btn", function() {


            let id = $(this).data("id");

            $.get("/admin/dashboard/category/list/edit_category", {
                id
            }, function(data) {
                if (data != "") {

                    $(".category_name").val(data.name);
                    $(".position").val(data.position);
                    $(".category_id").val(data.id);

                }
            }, "json");
            //  $("#post_categry_modal").modal("show");
        });
        $(document).on('click', '.deactivate-post-btn', function() {
            let id = $(this).data('id');


            $.confirm({
                title: 'Confirm!',
                type: 'red',
                content: 'Are you sure want to deactivate this Detail ?',
                buttons: {
                    yes: function() {
                        $.get("/admin/dashboard/category/list/banner_deactivate", {
                                id
                            },
                            function(data) {
                                if (data.error == false) {
                                    Toast.fire({
                                        icon: 'success',
                                        title: data.message
                                    });
                                    $('.category_table').DataTable().ajax.reload();
                                } else {
                                    Toast.fire({
                                        icon: 'error',
                                        title: data.message
                                    });
                                }
                            }, 'json');
                    },
                    no: function() {}
                }
            });
        });
    </script>

</body>

</html>