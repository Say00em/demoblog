@extends('layouts.dashboard')

@section ('content')
<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-lg-5 col-md-5 col-sm-12">
                    <h2>Stater Page</h2>
                    <ul class="breadcrumb padding-0">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}"><i class="zmdi zmdi-home"></i></a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Post Management</a></li>
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

    <section class = "main">

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    @if(session('success'))
                        <div class="alert alert-success">{{ session('success') }}</div>
                    @endif
                    <div class="card-header">
                        <h3>Add Post Information</h3>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('post.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="" class="form-label">Post Title</label>
                                <input type="text" class="form-control" name="post_name">
                            </div>

                            <div class="mb-3">
                                <label for="" class="form-label">Post Image</label>
                                <input type="file" class="form-control" name="post_img">
                            </div>

                            <div class="mb-3">
                                <label for="" class="form-label">Category</label>
                                <select name="category_id" class="form-control">
                                    <option value="">--Select Category--</option>
                                        @foreach ($cat as $category)
                                            <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                                        @endforeach
                                        <option value="" disabled>If category is not in the list, than firstly add the category's information</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="" class="form-label">Author</label>
                                <select name="author_id" class="form-control">
                                    <option value="">--Select Author--</option>
                                        @foreach ($auth as $author)
                                            <option value="{{ $author->id }}">{{ $author->author_name }}</option>
                                        @endforeach
                                        <option value="" disabled>If author is not in the list, than firstly add the author's information</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="" class="form-label">Description</label>
                                <textarea class="form-control" id="textarea" name="descrp"></textarea>
                            </div>

                            <div class="mb-3">
                                <label for="" class="form-label">Publishing Date</label>
                                <input type="date" class="form-control" name="date">
                            </div>

                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary">Add Post Information</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h3>Post Management Table</h3>
                    </div>
                    <div class="card-body">
                        <table class = "table table-stripped">
                            <tr>
                                <th>SL.</th>
                                <th>Post Name</th>
                                <th>Post Image</th>
                                <th>Category</th>
                                <th>Author</th>
                                <th>Description</th>
                                <th>Publishing Date</th>
                                <th>Action</th>
                            </tr>
                            @foreach ($posting as $sl=>$post)
                            <tr>
                                <td>{{ $sl+1 }}</td>
                                <td>{{ $post->post_name }}</td>
                                <td><img width="50" src="{{ asset('uploads/post') }}/{{ $post->post_img }}" class="img-fluid"></td>
                                <td>{{ $post->rel_to_cat->category_name }}</td>
                                <td>{{ $post->rel_to_author->author_name }}</td>
                                <td>{{ $post->descrp }}</td>
                                <td>{{ $post->date }}</td>
                                <td>
                                    <a class="button button-small edit" title="Edit">
                                        <i class="zmdi zmdi-edit"></i>
                                    </a>
                                    
                                    <a href="{{ route('post.delete', $post->id) }}" class="button button-small edit" title="Delete">
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

    </section>
@endsection
