<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Author;
use App\Models\Category;
use App\Models\Contact;
use Image;
use Str;

class PostController extends Controller
{
    function post(){
        $auth = Author::all();
        $cat = Category::all();
        $posting = Post::all();
        $notify = Contact::all();
        return view ('admin.post_manage.post', [
            'auth'=>$auth,
            'posting'=>$posting,
            'cat'=>$cat,
            'notify'=>$notify,
        ]);

    }
    
    function post_store(request $request){
        $id=Post::insertGetId([
            'post_name'=>$request->post_name,
            'category_id'=>$request->category_id,
            'author_id'=>$request->author_id,
            'descrp'=>$request->descrp,
            'date'=>$request->date,
        ]);

        $post_image = $request->post_img;
        $extension = $post_image->getClientOriginalExtension();
        $file_name = Str::random(3).rand(100,999).'.'.$extension;
        $img = Image::make($post_image)->save(public_path('uploads/post/'.$file_name));

        Post::find($id)->update([
            'post_img'=>$file_name,
        ]);

        return back()->with('success', 'Post Information Added Successfully!');
    }

    function post_delete($post_id){
        Post::find($post_id)->delete();
        return back();  
    }
}
