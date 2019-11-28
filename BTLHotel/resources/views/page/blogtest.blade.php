@extends('master')
@section('content')
<div class="blog-background" style=" background-image: url('source/image/bg_3.jpg');">
        <div class="blog">
            <h1>Blog</h1>
            <a href="#">HOME</a>
            <a href="#">BLOG</a>
        </div>
    </div>
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-8" style="margin-bottom:30px;">
                <div class="container" style="margin-bottom: -30px" id="showResult">
                    <div class="row" >

                    @foreach ($blog as $value)   
                            <div class="col-md-6" style="position:relative;">
                                <a href="#">
                                    <div class="blog-background" style="
                                    background-image: url({{$value->image}});
                                    height: 275px; 
                                    background-size: cover;
                                    background-position: center;
                                    position:relative;">
                                        <div class="meta-chart">
                                            <div>{{$value->date}}</div>
                                            <div>{{$value->author}}</div>
                                            <div><img src="source/image/icons/message.svg" />3</div>
                                        </div>  
                                    </div>
                                </a>
                                <a href="#">
                                <div>
                                    <h3 class="heading">{{$value->title}}</h3>
                                </div>   
                                </a>                                                            
                            </div>      
                    @endforeach                
                    </div>
                    <div style="height: 77px;text-align: center;">
                        {!!$blog->links()!!}
                    </div>
                </div>  
            </div>
            <div class="col-lg-4">
                <div class="container">
                    <form action="" method="get">
                        <input id="searchblog" name="keyword" type="text" placeholder="Type a keyword and hit enter" required/>
                        <button type="submit">
                            <img src="source/image/icons/search.svg"></img>
                        </button>
                    </form>
                            
                   

                    <div>
                        <h3>Categories</h3>
                        <ul class="categories">
                            <li>Family<span>1</span></li><hr/>
                            <li>Criminal<span>4</span></li><hr/>
                            <li>Business<span>5</span></li><hr/>
                            <li>Family<span>6</span></li>
                        </ul>
                    </div>

                    <h3 style="margin-bottom: 40px;">Popular artiles</h3>

                    <div class="popular-blog">
                        <div><img class="img-title" src="source/image/blog/image_1.jpg"/></div>
                        <div>
                            <span>Even the all-powerful Pointing has no control about the blind texts<br/></span>
                            <div class="infor-blog">
                                <img src="source/image/icons/calendar.svg" /><a href="#">Oct. 04. 2018</a>
                                <img src="source/image/icons/user.svg" /><a href="#">Dave lewis</a>
                                <img src="source/image/icons/message.svg" /><a href="#">5</a>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
@endsection


