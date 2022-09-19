<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use \Yajra\Datatables;
use Datatable;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $data['categories'] = DB::table('categories')->get();

        //return view('admin/book_index')->with($data);


        $data['authors'] = DB::table('authors')->get();
        return view('admin/book_index')->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $book =  new Book;
        $book->name = $request->book_name;

        $request->file('poster');
        $file = $request->file('poster');
        $extension = $file->getClientOriginalExtension();
        $filename = time() . rand(100, 999) . '.' .  $extension;
        $file->move('upload/', $filename);
        $book->poster = $filename;



        $file = $request->file('pdf');
        $extension = $file->getClientOriginalExtension();

        $filename = time() . '.' . $extension;
        $file->move('upload/', $filename);
        $book->book_pdf = $filename;


        $book->category = $request->category;
        $book->author = $request->author;
        $book->description = $request->description;
        $result = $book->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)

    {
        //return "unnati";

        $book = DB::table('books')->get();
        return datatables()->of($book)
            ->addColumn('name', function ($book) {
                return $book->name;
            })

            ->addColumn('poster', function ($book) {
                $url = url('/upload') . '/' . $book->poster;
                $poster = '<img src="' . $url . '" width="50" class="img-thumbnail "></img>';

                return $poster;
            })

            ->addColumn('book_pdf', function ($book) {
                $url = url('/upload/file_icon.jpg');

                $pdf = '<img src="' . $url . '" width="50" class="img-thumbnail "></img>';
                return $pdf;
            })
            ->addColumn('category', function ($book) {

                return  $book->category;
            })
            ->addColumn('author', function ($book) {

                return $book->author;
            })
            ->addColumn('description', function ($book) {
                return $book->description;
            })

            ->addColumn('actions', function ($book) {

                $id = $book->id;

                $action = '<button type="button" class="btn btn-primary edit_btn" data-toggle="modal" data-target="#bookedit" data-id="' . $book->id . ' " >
                   edit
                </button>';
                return $action;
            })



            ->rawColumns(['name', 'poster', 'book_pdf', 'category', 'author', 'description', 'actions'])->make(true);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        //
        $id = $request->id;
        $rows = DB::table('books')->where('id', $id)->first();
        //dd($rows);
        return response()->json($rows);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Book $book)
    {
        //
        {
            // dd($request->book_name);
            //return ("hello");

            $Book = Book::find($request->get('book_id'));
            $Book->name = $request->get('name');
            $request->file('poster');
            $file = $request->file('poster');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . rand(100, 999) . '.' .  $extension;
            $file->move('upload/', $filename);
            $book->poster = $filename;
            $file = $request->file('pdf');
            $extension = $file->getClientOriginalExtension();

            $filename = time() . '.' . $extension;
            $file->move('upload/', $filename);
            $book->book_pdf = $filename;
            $book->category = $request->category;

            $book->description = $request->description;
            $result = $book->save();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function destroy(Book $book)
    {
        //
    }

    public function list(Book $book)

    {
        return view('admin/book_list');
    }
    public function bookselect()
    {
        $data['categories'] = DB::table('categories')->get();
        $data['books'] = DB::table('books')->get();
        $user_id = auth()->user()->id;


        $rent_details = DB::table('rent_details')->where('user_id', $user_id)->get();


        $data['rent_details'] = DB::table('rent_details')->where('user_id', $user_id)->where('status', '1')
            ->join('books', 'books.id', 'rent_details.book_id')
            ->get();


        $data['returned_details'] = DB::table('rent_details')->where('user_id', $user_id)->where('status', '0')
            ->join('books', 'books.id', 'rent_details.book_id')
            ->get();







        $book_ids = DB::table('rent_details')->where('user_id', $user_id)->where('status', '1')->pluck('book_id')->toArray();



        $data['rented_book_ids'] = $book_ids;
        return view('dashboard')->with($data);
    }
}
