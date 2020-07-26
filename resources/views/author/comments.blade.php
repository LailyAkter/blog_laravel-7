@extends('layouts.backend.master')

@section('title','Comments')

@push('css')
    <!-- JQuery DataTable Css -->
    <link href="{{ asset('admin/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css') }}" rel="stylesheet">
@endpush

@section('content')
    <div class="container-fluid">
        <!-- Exportable Table -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>ALL COMMENTS</h2>
                    </div>
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                <thead>
                                <tr>
                                    <th>Comments Info</th>
                                    <th>Posts Info </th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Comments Info</th>
                                    <th>Posts Info </th>
                                    <th>Action</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                    @foreach($posts as $post)
                                        @foreach($post->comments as $comment)
                                            <tr>
                                                <td>
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <a href="#" target="_blank">
                                                                <img width='64' height='64' src="{{asset('storage/avatar/'.$comment->user->image)}}" alt="" class='media-object'>
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h4 class='media-heading'>
                                                                {{$comment->user->name}}
                                                                <small>{{$comment->created_at->diffForHumans()}}</small>
                                                            </h4>
                                                            <p>{{$comment->comment}}</p>
                                                            <p>By <strong>{{$comment->post->user->name}}</strong></p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="media">
                                                        <div class="media-right">
                                                            <a href="" target="_blank">
                                                                <img width='64' height='64' src="{{asset('storage/post/'.$comment->post->image)}}" alt="{{$comment->post->title}}" class='media-object'>
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <a href="" target="_blank">
                                                                <h4 class='media-heading'>{{Str::limit($comment->post->title,'40')}}</h4>
                                                            </a>
                                                            <p>By <strong>{{$comment->post->user->name}}</strong></p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td style='float:left'>
                                                    <form action="{{url('author/comment',$comment->id)}}" method='POST'>
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type='submit' class="btn btn-danger btn-sm">
                                                            <i class="material-icons">delete</i>
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Exportable Table -->
    </div>
@endsection

@push('js')
    <!-- Jquery DataTable Plugin Js -->
    <script src="{{ asset('admin/plugins/jquery-datatable/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/buttons.flash.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/jszip.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/pdfmake.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/vfs_fonts.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/extensions/export/buttons.print.min.js') }}"></script>

    <script src="{{ asset('admin/js/pages/tables/jquery-datatable.js') }}"></script>
    
@endpush