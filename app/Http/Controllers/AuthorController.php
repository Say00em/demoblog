<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Author;
use App\Models\Contact;
use Image;
use Str;

class AuthorController extends Controller
{
    function author(){
        $auth = Author::all();
        $notify = Contact::all();
        return view('admin.authors.author', [
            'auth'=>$auth,
            'notify'=>$notify,
        ]);
    }

    function author_store(request $request){
        $id = Author::insertGetId([
            'author_name'=>$request->author_name,
            'designation'=>$request->designation,
        ]);

        $profile = $request->author_img;
        $extension = $profile->getClientOriginalExtension();
        $file_name = Str::random(3).rand(100,999).'.'.$extension;
        $img = Image::make($profile)->save(public_path('uploads/author/'.$file_name));

        Author::find($id)->update([
            'author_img'=>$file_name,
        ]);

        return back()->with('success', 'Authors Information Added Successfully!');
    }

    function author_delete($author_id){
        Author::find($author_id)->delete();
        return back();
    }
}
