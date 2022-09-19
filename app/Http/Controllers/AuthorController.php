<?php

namespace App\Http\Controllers;

use App\Models\Author;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AuthorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('admin/author_index');
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

        $author = new Author;
        $author->name = $request->Author_name;
        $author->position = $request->position;
        $result = $author->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function show(Author $author)
    {
        $author = DB::table('authors')->get();
        return datatables()->of($author)
            ->addColumn('name', function ($author) {
                return $author->name;
            })

            ->addColumn('position', function ($author) {
                return $author->position;
            })

            ->addColumn('actions', function ($author) {

                $id = $author->id;

                $button = '<button type="button" class="btn btn-primary edit_btn" data-toggle="modal" data-target="#authoredit" data-id="' . $author->id . ' " >
                   edit
                </button>';


                return $button;
            })




            ->rawColumns(['name', 'position',  'actions'])->make(true);

        return view('admin/author_index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {

        $id = $request->id;
        $rows = DB::table('authors')->where('id', $id)->first();
        return response()->json($rows);
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Author $author)
    {
        //
        $author = Author::find($request->get('author_id'));
        $author->name = $request->get('author_name');
        $author->position = $request->get('position');
        $result = $author->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function destroy(Author $author)
    {
        //
    }
}
