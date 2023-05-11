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
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Authors</a></li>
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

<section class="main">
    <div class="row">
        <div class="col-lg-8">
            <div class="card">
                @if(session('success'))
                    <div class="alert alert-success">{{ session('success') }}</div>
                @endif
                <div class="card-header">
                    <h3>Authors List</h3>
                </div>
                <div class="card-body">
                    <table class = "table table-stripped">
                        <tr>
                            <th>SL.</th>
                            <th>Author's Name</th>
                            <th>Author's Image</th>
                            <th>Designation</th>
                            <th>Action</th>
                        </tr>
                        @foreach ($auth as $sl=>$author)
                        <tr>
                            <td>{{ $sl+1 }}</td>
                            <td>{{ $author->author_name }}</td>
                            <td><img width= "50" src="{{ asset('uploads/author') }}/{{ $author->author_img }}" class="img-fluid"></td>
                            <td>{{ $author->designation }}</td>
                            <td>
                                <a class="button button-small edit" title="Edit">
                                    <i class="zmdi zmdi-edit"></i>
                                </a>
                                    
                                <a href="{{ route('author.delete', $author->id) }}" class="button button-small edit" title="Delete">
                                    <i class="zmdi zmdi-delete"></i>
                                </a>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="card">
                <div class="card-header">
                    <h3>Add Author's Profile</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('author.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label for="" class="form-label">Author's Name</label>
                            <input type="text" class="form-control" name="author_name">
                        </div>

                        <div class="mb-3">
                            <label for="" class="form-label">Author's Image</label>
                            <input type="file" class="form-control" name="author_img">
                        </div>

                        <div class="mb-3">
                            <label for="" class="form-label">Designation</label>
                            <input type="text" class="form-control" name="designation">
                        </div>

                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary">Add Author's Information</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection