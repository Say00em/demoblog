<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;

class ContactController extends Controller
{
    function contact(){
        return view ('frontend.contact');
    }

    function contact_store(request $request){
        Contact::insert([
            'cont_name'=>$request->cont_name,
            'cont_email'=>$request->cont_email,
            'cont_topic'=>$request->cont_topic,
            'cont_message'=>$request->cont_message,
        ]);
        return back();
    }

    function message_notification(){
        $notify = Contact::all();
        return view ('admin.notify.notification', [
            'notify'=>$notify,
        ]);
    }

    function message_delete($notification_id){
        Contact::find($notification_id)->delete();
        return back();
    }
}
