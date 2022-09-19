<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="//cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet">


</head>

@extends('admin.layouts.data-table')

<body>
    @section('content')
    <!-- Button trigger modal -->
    <!-- Modal -->
    <div class="modal fade" id="auther_add_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close close-auther-add-modal" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                    <form id="postform">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputEmail1">Author Name</label>
                            <input type="text" class="form-control" name="Author_name" aria-describedby="emailHelp" placeholder="Enter Category name">
                            <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                                else.</small> -->
                        </div>


                        <div class="form-group">
                            <label for="exampleInputPassword1">Position</label>
                            <input type="text" class="form-control" name="position" placeholder="Enter position you want to display category">
                        </div>

                        <button type="submit" class="btn btn-primary" id="add_author">Add author</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>

    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#auther_add_modal">
        Add Author
    </button>


    <div class="modal fade" id="authoredit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>


                <div class="modal-body">
                    <form id="authorform">
                        @csrf
                        <div class="form-group">
                            <input type="hidden" name="author_id" class="author_id" value="">


                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Author Name</label>
                            <input type="text" name="author_name" class=" form-control author_name" value="" aria-describedby="emailHelp" placeholder="Enter Category name">

                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Position</label>
                            <input type="text" class="form-control position" name="position" value="" placeholder="Enter position you want to display category">
                        </div>

                        <button type="submit" class="btn btn-primary update_author" id="update">Update category</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>






    <table class="author_table table-striped" border="2px">
        <thead>
            <tr>
                <th>Name</th>
                <th>position</th>


                <th>Action</th>


            </tr>
        </thead>
        <tbody>
        </tbody>


    </table>

    @endsection

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.4/jquery-confirm.min.js"></script>
    <script>
        $(document).ready(function() {
            $(document).on('click', '#add_author', function(e) {
                e.preventDefault();
                console.log("hello");


                let myForm = document.getElementById('postform');
                console.log(myForm);
                var formData = new FormData(myForm);

                formData.append('_token', '{{ csrf_token() }}');


                $(this).attr('disabled', true);

                console.log(formData);
                $.ajax({
                    type: "POST",
                    url: "/addauthor",
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        alert("data inserted!");
                        $('.close-auther-add-modal').trigger('click');

                    }
                });

            });

        });

        $(document).ready(function() {


            $('.author_table').DataTable().clear().destroy();

            $(".author_table").DataTable({

                serverSide: true,
                processing: true,
                searching: true,
                order: [],
                ajax: {

                    url: "/author/list/author_show",
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
                        data: 'actions'

                    },
                ]
            });

        });

        $(document).on("click", ".edit_btn", function() {


            let id = $(this).data("id");

            $.get("/admin/dashboard/author/list/edit_author", {
                id
            }, function(data) {
                if (data != "") {

                    $(".author_name").val(data.name);
                    $(".position").val(data.position);
                    $(".author_id").val(data.id);

                }
            }, "json");
            //  $("#post_categry_modal").modal("show");
        });

        $(document).on("click", ".update_author", function() {

            //console.log(id);
            let myForm = document.getElementById('authorform');
            //console.log(myForm);
            var formData = new FormData(myForm);
            formData.append('_token', '{{ csrf_token() }}');
            $(this).attr('disabled', true);
            //console.log(formData);

            $.ajax({
                type: "post",
                url: "/author_update",
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function(response) {
                    alert(" Author updated successfully..!");
                }
            });

        });
    </script>
</body>

</html>