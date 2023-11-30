
 
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif


@if (Session::has('class') && Session::has('message'))
    <div class="alert alert-danger" >{{ Session::get('message') }}</div>
@endif

@if (Session::has('success'))
<div class="alert alert-success" role="alert">
    {{ Session::get('success') }}
</div>
@elseif (Session::has('error'))
    <div class="alert alert-danger"r role="alert">
        {{Session::get('error')}}
    </div>
@endif