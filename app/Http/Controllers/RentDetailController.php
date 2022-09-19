<?php

namespace App\Http\Controllers;

use App\Models\RentDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RentDetailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data['rent_details'] = DB::table('rent_details')->get();
        return view('/dashboard')->with($data);
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

        $user_id = auth()->user()->id;
        $rows = DB::table('rent_details')->where('user_id', $user_id)->where('status', '1')->get();

        $query = $rows->count();

        if ($query < 2) {
            $rentDetail = new RentDetail;
            $user_id = auth()->user()->id;
            $rentDetail->book_id = $request->book_id;
            $rentDetail->user_id = $user_id;
            $result = $rentDetail->save();

            if ($result) {
                return response()->json(['success' => true, 'message' => 'Book rented successfully.']);
            }

            return response()->json(['success' => true, 'message' => 'Something went wrong, Please try again!']);
        }
        return response()->json(['success' => true, 'message' => 'Book rent maxium limit is 2!']);
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RentDetail  $rentDetail
     * @return \Illuminate\Http\Response
     */
    public function show(RentDetail $rentDetail)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\RentDetail  $rentDetail
     * @return \Illuminate\Http\Response
     */
    public function edit(RentDetail $rentDetail)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\RentDetail  $rentDetail
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, RentDetail $rentDetail)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\RentDetail  $rentDetail
     * @return \Illuminate\Http\Response
     */
    public function destroy(RentDetail $rentDetail)
    {
        //
    }

    public function returnBook(Request $request)
    {


        $book_id = $request->book_id;
        $rent_details = DB::table('rent_details')->where('book_id', $book_id)->update(['status' => '0', 'returned_date' => date('Y-m-d')]);
    }
}
