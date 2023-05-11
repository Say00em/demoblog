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
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Categories</a></li>
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
                    <h3>Categories List</h3>
                </div>
                <div class="card-body">
                    <table class ="table table-stripped">
                        <tr>
                            <th>SL.</th>
                            <th>Category Name</th>
                            <th>Category's Image</th>
                            <th>Action</th>
                        </tr>
                        @foreach ($cat as $sl=>$category)
                        <tr>
                            <td>{{ $sl+1 }}</td>
                            <td>{{ $category->category_name }}</td>
                            <td><img width="50" src="{{ asset('uploads/categories') }}/{{ $category->category_img }}" class="img-fluid"></td>
                            <td>
                                <a class="button button-small edit" title="Edit">
                                    <i class="zmdi zmdi-edit"></i>
                                </a>
                                    
                                <a href="{{ route('category.delete', $category->id) }}" class="button button-small edit" title="Delete">
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
                    <h3>Add Categories</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('category.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label for="" class="form-label">Category's Name</label>
                            <input type="text" class="form-control" name="category_name">
                        </div>

                        <div class="mb-3">
                            <label for="" class="form-label">Category's Image</label>
                            <input type="file" class="form-control" name="category_img">
                        </div>

                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary">Add this Category</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection