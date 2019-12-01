
@extends('admin.layouts.app')


@section('content')
<div class="row live-container">
    <div class="col-md-4 ">
      <div class="card articlelist-container">
        <div class="card-header">
          Άρθρα
        </div>
        <div class="card-body list-group-container">
            <ul class="list-group" id='articlelist'>
            @foreach($articles as $article)
                <li article-id="{{ $article->id }}" class="list-group-item" style="display:flex; flex-direction: row;">
                    <div style="width:30%;" >
                        <img src="{{ asset($article->poster_img) }}" alt="" srcset="">
                    </div>
                    <div style=' width: 70%; padding: 10px;' >
                      {{ $article->title }}
                    </div>
                </li>
            @endforeach
            </ul>
        </div>
      </div>
    </div>
    <div class="col-md-8 ">
      <div class="card video-section">
        <div class="card-header">Προβολή Άρθρου</div>
        <div class="card-body">
          <div id="txtEditor"></div>           
          <button class="btn btn-primary" style="float:right;" id="btn-article-accept"><i class="fas fa-check"></i> ΕΓΚΡΗΣΗ </button>
          <button class="btn btn-danger" style="float:right;" id="btn-article-deny"><i class="fas fa-times"></i> ΑΠΟΡΡΙΨΗ </button>            
        </div>
      </div>
    </div>
</div>
<form action="{{ route('admin.article.accept') }}" method='post' id='article-accept-form'>
    @csrf
    <input type="hidden" name='article_id' id='accept_article_id' />
</form>
<form action="{{ route('admin.article.deny') }}" method='post' id='article-deny-form'>
    @csrf
    <input type="hidden" name='article_id' id='deny_article_id' />
</form>
@endsection

@push('scripts')
<script>
$(".list-group-item").click(function(e){
  $("#accept_article_id").val($(this).attr("article-id"));
  $("#deny_article_id").val($(this).attr("article-id"));
  $.get("{{ route('getarticlecontent') }}", {articleid: $(this).attr("article-id")})
    .done(data => {
      $("#txtEditor").html(data.content);
    })
    .fail(err => {});
});

$("#btn-article-accept").click(e => {
  $("#article-accept-form").submit();
});
$("#btn-article-deny").click(e => {
  $("#article-deny-form").submit();
});
</script>
@endpush

@push('external-styles')
<link rel='stylesheet' href="{{ asset('plugins/editor/editor.css') }}">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href='{{ asset("css/common/listcommon.css") }}' rel='stylesheet' />
@endpush


@push('page-styles')
.video-section{
  height:auto !important;
}

.live-container video{
  width: 100%;
  height: 600px;
}

.articlelist-container{
  height:700px;
}

.list-group-container
{
  height:80%;
  overflow-y: auto;
}
.list-group-container::-webkit-scrollbar {
    width: 6px;
}
.list-group-container::-webkit-scrollbar-button {
    width: 6px;
    display: block;
    height: 100%;
}
.list-group-container::-webkit-scrollbar-thumb {
    width: 6px;
    border-radius: 4px !important;
    background-color: #d9d6d6;
    cursor: pointer;
}

.list-group-item{
  height: auto !important;
}
.list-group-item *{
  cursor: pointer;
}

.live-container{
  margin-top:30px;
}


.btn.dropdown-toggle:after{
  text-align: center;
  display: inline;
  border: 0;
  font-family: "FontAwesome";
  text-decoration: inherit;
  text-rendering: optimizeLegibility;
  text-transform: none;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
  content: "\f107";
  font-size: 0.8rem;
  line-height: 0;
  vertical-align: middle;
  position: relative;
  margin-left: 0.255rem/*rtl:ignore*/;
  margin-right: 0.255rem/*rtl:ignore*/;
}

.Editor-editor{
  height:400px;
}

.selected{
  color:#FFF !important;
  background-color:rgb(0, 162, 232);
}
@endpush


