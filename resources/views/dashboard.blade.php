<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }} {{Auth::user()->name}}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="container">
            <div class="row">
                <div class="gallery col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <h1 class="gallery-title">BOOKS</h1>
                </div>
                <!--  -->

                <div align="center">
                    <button class="btn btn-default filter-button" data-filter="all">All</button>
                    @foreach($categories as $cat)
                    <button class="btn btn-default filter-button" data-filter="{{$cat->id}}">{{$cat->name}}</button>
                    @endforeach

                </div>
                <br />
                <div class="col-lg-10">

                    @foreach($books as $book)
                    @php
                    $url = url('/upload') . '/' . $book->poster;
                    $user_id = Auth::user()->id;
                    $book_id= $book->id;

                    @endphp

                    <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter {{$book->category}}"><a href="">
                            <img src={{$url}} class="img-responsive" style="width:200px;height:200px;"></a>


                        <div class="transparent-box">
                            @if(in_array($book_id, $rented_book_ids))
                            <button type="button" class="btn btn-danger rented_book" id="{{$book->id}}">RETURN BOOK</button>
                            @else
                            <button type="button" class="btn btn-primary caption" id="{{$book->id}}">RENT BOOK</button>
                            @endif
                        </div>
                    </div>
                    @endforeach
                </div>


                <div class="col-lg-2" style=" border: 3px solid black;">

                    <div class="row" style=" border: 1px solid black;">
                        <h3>Rented Book</h3>
                        @foreach($rent_details as $rented)
                        @php
                        $url = url('/upload') . '/' . $rented->poster;
                        @endphp
                        <div class=col-lg-6>
                            <img src={{$url}} class="img-responsive">
                        </div>
                        @endforeach

                    </div>


                    <div class=" row" style=" border: 1px solid black;">
                        <h3>Returned Book</h3>
                        @foreach($returned_details as $returned)
                        @php
                        $url = url('/upload') . '/' . $returned->poster;
                        @endphp
                        <div class=col-lg-6>
                            <img src={{$url}} class="img-responsive">
                        </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>

    </div>
</x-app-layout>

<html>

<head>
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>CSS Gallery</title>
    <link href="https://fonts.googleapis.com/css?family=Raleway:600,900" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .gallery-title {
            font-size: 36px;
            color: #FFA500;
            text-align: center;
            font-weight: 500;
            margin-bottom: 70px;
        }

        .gallery-title:after {
            content: "";
            position: absolute;
            width: 22.5%;
            left: 38.5%;
            height: 45px;
            border-bottom: 1px solid #5e5e5e;
        }

        .filter-button {
            font-size: 18px;
            border: 1px solid #FFA500;
            border-radius: 5px;
            text-align: center;
            color: #FFA500;
            margin-bottom: 30px;

        }

        .filter-button:hover {
            font-size: 18px;
            border: 1px solid #FFA500;
            border-radius: 5px;
            text-align: center;
            color: #ffffff;
            background-color: #FFA500;

        }

        .btn-default:active .filter-button:active {
            background-color: #FFA500;
            color: white;
        }

        .port-image {
            width: 100%;
        }

        .gallery_product {
            margin-bottom: 30px;
        }

        img {
            box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .caption {
            position: absolute;
            bottom: 5px;
            left: 20px;
            opacity: 0.0;
            transition: transform 0.3s ease, opacity 0.3s ease;
        }

        .rented_book {
            position: absolute;
            bottom: 5px;
            left: 20px;
            opacity: 0.0;
            transition: transform 0.3s ease, opacity 0.3s ease;
        }

        .gallery_product:hover img {
            transform: scale(1.1);
        }

        .gallery_product:hover .transparent-box {
            background-color: rgba(0, 0, 0, 0.5);
        }

        .gallery_product:hover .caption {
            transform: translateY(-20px);
            opacity: 1.0;
        }

        .gallery_product:hover .rented_book {
            transform: translateY(-20px);
            opacity: 1.0;
        }

        .gallery_product:hover {
            cursor: pointer;
        }

        .caption>p:nth-child(2) {
            font-size: 0.8em;
        }

        .rented_book>p:nth-child(2) {
            font-size: 0.8em;
        }

        .opacity-low {
            opacity: 0.5;
        }
    </style>
</head>

<body>


</body>
<script src=" https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js">
</script>
<script src=https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</script>
<script>
    $(document).ready(function() {


        $(".filter-button").click(function() {
            var value = $(this).attr('data-filter');

            if (value == "all") {

                $('.filter').show('1000');
            } else {

                $(".filter").not('.' + value).hide('3000');
                $('.filter').filter('.' + value).show('3000');

            }
        });

        if ($(".filter-button").removeClass("active")) {
            $(this).removeClass("active");
        }
        $(this).addClass("active");


        $(".caption").click(function() {


            var book_id = $(this).attr('id');
            $.get("/book_rent", {
                book_id
            }, function(data) {

                if (data.success == true) {
                    alert(data.message);
                    location.reload();
                    //$('.rented_book').trigger('click');

                } else {

                    alert(data.message);
                }
            });
        });


        $(".rented_book").click(function() {
            var book_id = $(this).attr('id');
            $.get("/book_return", {
                book_id
            });
        });
    });
</script>