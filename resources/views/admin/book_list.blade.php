<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="//cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet">
</head>

<body>
    <!-- Modal -->

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
                <th>Poster</th>
                <th>PDF</th>
                <th>category</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <td>Name</td>
            <td>Poster</td>
            <td>PDF</td>
            <td>category</td>
            <td>Description</td>
            <td>Action</td>
        </tbody>


    </table>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function() {


            $('.category_table').DataTable().clear().destroy();

            $(".category_table").DataTable({
                serverSide: true,
                processing: true,
                searching: true,
                order: [],
                ajax: {

                    url: "/admin/dashboard/book/list/book_show",
                    type: "GET",

                },

                "columns": [

                    {
                        data: 'name'
                    },
                    {
                        data: 'poster'
                    },
                    {
                        data: 'book_pdf'
                    },
                    {
                        data: 'category'

                    },
                    {
                        data: 'description'

                    },
                    {
                        data: 'actions'

                    },

                ]
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

        // $(document).on("click", ".update_category", function() {

        //     //console.log(id);
        //     let myForm = document.getElementById('categoryform');
        //     console.log(myForm);
        //     var formData = new FormData(myForm);
        //     formData.append('_token', '{{ csrf_token() }}');
        //     $(this).attr('disabled', true);
        //     //console.log(formData);

        //     $.ajax({
        //         type: "post",
        //         url: "/category_update",
        //         data: formData,
        //         cache: false,
        //         contentType: false,
        //         processData: false,
        //         success: function(response) {
        //             console.log(response);
        //         }
        //     });

        // });
    </script>

</body>

</html>