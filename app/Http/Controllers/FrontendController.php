<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use App\Models\Author;
use App\Models\Blog_comment;

class FrontendController extends Controller
{
    function index(){
        $posting = Post::all();
        $cat = Category::all();
        $auth = Author::all();
        
        return view('frontend.index', [
            'posting'=>$posting,
            'cat'=>$cat,
            'auth'=>$auth,
            
        ]);
    }

    function authors(){
        $auth = Author::all();
        return view ('frontend.authors', [
            'auth'=>$auth,
        ]);
    }

    function blog($id){
        $posting = Post::where('id', $id)->get();
        $blog_com = Blog_comment::all();
        return view ('frontend.blog', [
            'posting'=>$posting,
            'blog_com'=>$blog_com,
        ]);
    }

    function about(){
        return view('frontend.about');
    }

}
