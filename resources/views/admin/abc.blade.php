<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!--<meta name="csrf-token" content="{{ csrf_token() }}">-->

    <!-- Bootstrap CSS -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="//cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet">

</head>



<body>

    <table class="category_table table-striped" border="2px">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        </tbody>


    </table>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>


    <script>
        $(document).ready(function() {
            //  $('.category_table').DataTable();

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
    </script>





</body>




</html>