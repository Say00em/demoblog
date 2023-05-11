<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog_comment;

class CommentController extends Controller
{
    function blog_comment_store(request $request){
        Blog_comment::insert([
            'comm_name'=>$request->comm_name,
            'email'=>$request->email,
            'message'=>$request->message,
        ]);
        return back();
    }

    
}
