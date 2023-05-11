@extends ('layouts.dashboard')

@section ('content')
<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-lg-5 col-md-5 col-sm-12">
                    <h2>Stater Page</h2>
                    <ul class="breadcrumb padding-0">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}"><i class="zmdi zmdi-home"></i></a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Inbox</a></li>
                    </ul>
                </div>            
                <div class="col-lg-7 col-md-7 col-sm-12">
                    <div class="input-group m-b-0">                
                        <input type="text" class="form-control" placeholder="Search...">
                        <span class="input-group-addon">
                            <i class="zmdi zmdi-search"></i>
                        </span>
                    </div>
                </div>
            </div>
        </div>  
    </div>
</section>


    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h3>Messages from Blogsite</h3>
                    </div>
                    <div class="card-body">
                        <table class = "table table-stripped">
                            <tr>
                                <th>SL.</th>
                                <th>Name</th>
                                <th>Email Address</th>
                                <th>Topic</th>
                                <th>Message</th>
                                <th>Action</th>
                            </tr>
                            @foreach ($notify as $sl=>$notification)
                            <tr>
                                <td>{{ $sl+1 }}</td>
                                <td>{{ $notification->cont_name }}</td>
                                <td>{{ $notification->cont_email }}</td>
                                <td>{{ $notification->cont_topic }}</td>
                                <td>{{ $notification->cont_message }}</td>
                                <td> 
                                    <a class="button button-small edit" title="Edit">
                                        <i class="zmdi zmdi-edit"></i>
                                    </a>
                                    
                                    <a href="{{ route('message.delete', $notification->id) }}" class="button button-small edit" title="Delete">
                                        <i class="zmdi zmdi-delete"></i>
                                    </a>
                                </td>
                            </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection