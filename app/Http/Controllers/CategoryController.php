<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Contact;
use Image;
use Str;

class CategoryController extends Controller
{
    function category(){
        $cat = Category::all();
        $notify = Contact::all();
        return view('admin.categories.category', [
            'cat'=>$cat,
            'notify'=>$notify,
        ]);
    }

    function category_store(request $request){
        $id = Category::insertGetId([
            'category_name'=>$request->category_name,
        ]);

        $cat_pic = $request->category_img;
        $extension = $cat_pic->getClientOriginalExtension();
        $file_name = Str::random(3).rand(100,999).'.'.$extension;
        $img = Image::make($cat_pic)->save(public_path('uploads/categories/'.$file_name));

        Category::find($id)->update([
            'category_img'=>$file_name,
        ]);
        return back()->with('success', 'Category Added Successfully!');
    }

    function category_delete($category_id){
        Category::find($category_id)->delete();
        return back();
    }

}
