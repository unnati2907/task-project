<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="//cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet">

</head>

@extends('admin.layouts.data-table')

<body>
    @section('content')
    <!-- Button trigger modal -->
    <!-- Modal -->

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Books</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                    <form id="bookdata" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputEmail1">Book Name</label>
                            <input type="text" class="form-control" name="book_name" aria-describedby="emailHelp" placeholder="Enter Category name">

                        </div>
                        <div class="form-group">
                            <label for="formFile" class="form-label">Poster</label>
                            <input type="file" class="form-control poster" name="poster">
                        </div>
                        <div class="form-group">
                            <label for="formFile" class="form-label">Book PDF</label>
                            <input class="form-control " type="file" id="formFile" name="pdf">
                        </div>

                        <div class="form-group">
                            <label for="inputState">Category</label>
                            <select id="category" class="form-control" name="category">
                                <option selected>Choose...</option>
                                @foreach($categories as $cat)
                                <option value="{{$cat->id}}">{{$cat->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="inputState">Author</label>
                            <select id="author" class="form-control" name="author">
                                <option selected>Choose...</option>
                                @foreach($authors as $auth)
                                <option value="{{$auth->id}}">{{$auth->name}}</option>
                                @endforeach
                            </select>
                        </div>




                        <div class="form-group">
                            <label for="exampleInputPassword1">Description</label>
                            <textarea class="form-control description " name="description" rows="3"></textarea>
                        </div>


                        <button type="submit" class="btn btn-primary" id="add_book">Add category</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Add Books
    </button>



    <div class="modal fade" id="bookedit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Update Book</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>


                <div class="modal-body">
                    <form id="bookupdate_form" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <input type="hidden" name="book_id" class="book_id" value="">


                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Book Name</label>
                            <input type="text" class="form-control book_name" name="book_name" aria-describedby="emailHelp" placeholder="Enter Category name" value="">

                        </div>
                        <div class="form-group">
                            <label for="formFile" class="form-label">Poster</label>
                            <input type="file" class="form-control poster" name="poster" value="">
                        </div>
                        <div class="form-group" id="poster">

                        </div>
                        <div class="form-group">
                            <label for="formFile" class="form-label">Book PDF</label>
                            <input class="form-control pdf" type="file" name="pdf" value="">
                        </div>


                        <div class="form-group">
                            <label for="inputState">Category</label>
                            <select id="category" class="form-control" name="category" value="">
                                <option selected>Choose...</option>
                                @foreach($categories as $cat)
                                <option value="{{$cat->id}}">{{$cat->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Description</label>
                            <textarea class="form-control description" name="description" id="exampleFormControlTextarea1" rows="3" value=""></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary update_book" id="update">Update Book</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </form>
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
                <th>Author</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>

        </tbody>


    </table>
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
            $(document).on('click', '#add_book', function(e) {
                e.preventDefault();

                let myForm = document.getElementById('bookdata');
                console.log(myForm);
                var formData = new FormData(myForm);
                formData.append('_token', '{{ csrf_token() }}');


                $(this).attr('disabled', true);

                console.log(formData);
                $.ajax({
                    type: "POST",
                    url: "/add_book",
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        alert("Book inserted!");
                    }
                });

            });

        });
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
                        data: 'author'

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

            $.get("/admin/dashboard/book/list/edit_book", {
                id
            }, function(data) {
                if (data != "") {

                    $(".book_name").val(data.name);
                    $(".description").val(data.description);

                    $("#poster").html(
                        `<img src="/upload/${data.poster}" width="100" class="img-fluid img-thumbnail">`);

                    $("#category").val(data.category);
                    $(".book_id").val(data.id);

                }
            }, "json");

        });
        $(document).on("click", ".update_book", function() {


            let myForm = document.getElementById('bookupdate_form');

            var formData = new FormData(myForm);

            formData.append('_token', '{{ csrf_token() }}');


            $.ajax({
                type: "post",
                url: "/book_update",
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function(response) {
                    console.log(response);
                }
            });

        });
    </script>
    @endsection
</body>

</html>