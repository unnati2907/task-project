<?php

namespace App\Http\Controllers;

use App\models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use \Yajra\Datatables;
use Datatable;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('admin/category-index');
        //return view('admin/abc');
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

        //dd($request);
        $category = new Category;
        $category->name = $request->category_name;
        $category->position = $request->position;
        $result = $category->save();
        return view('admin/category_list');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $category = DB::table('categories')->get();
        return datatables()->of($category)
            ->addColumn('name', function ($category) {
                return $category->name;
            })

            ->addColumn('position', function ($category) {
                return $category->position;
            })

            ->addColumn('actions', function ($category) {

                $id = $category->id;

                $button = '<button type="button" class="btn btn-primary edit_btn" data-toggle="modal" data-target="#categoryedit" data-id="' . $category->id . ' " >
                   edit
                </button>';

                $button .= ' <a href="javascript:void(0);" data-id="' . $category->id . '" class="btn btn-sm btn-danger deactivate-post-btn" data-toggle="tooltip" data-placement="top" title="Block Detail" style="padding:.
                700rem .666rem;" ><i class="bx bx-block"></i></a>';
                return $button;
            })

            ->addColumn('status', function ($category) {

                if ($category->status == 0) {

                    $status = '<span class="badge badge-pill badge-light-info">Enable</span>';
                } elseif ($category->status == 1) {
                    $status = '<span class="badge badge-pill badge-light-danger">Disabled</span>';
                }
                return $status;
            })


            ->rawColumns(['name', 'position', 'status', 'actions'])->make(true);

        return view('admin/category_list');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    { {
            $id = $request->id;
            $rows = DB::table('categories')->where('id', $id)->first();
            return response()->json($rows);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $category = Category::find($request->get('category_id'));
        $category->name = $request->get('category_name');
        $category->position = $request->get('position');
        $result = $category->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        //
    }

    public function list(Category $category)

    {
        $category = DB::table('categories')->get();

        return view('admin/category_list', compact('category'));
    }

    public function banner_deactivate(Request $request)
    {
        $id = $request->id;
        $data = [
            'is_active' => "No",
        ];
        $query =  DB::table('banner')->where('id', $id)->update($data);
        if ($query > 0) {
            return response()->json(['error' => false, 'message' => 'Post Category Deactivated successfully !']);
        } else {
            return response()->json(['error' => true, 'message' => 'Something went wrong !',]);
        }
    }
}
