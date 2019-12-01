<html>
    <head>
    
    
    </head>
    <body>
    
    <div style='padding: 100px; width: 100%;'>
        @include('user.component.circle')
    </div>
    
    <script> const asset_url = "{{ asset('') }}"; </script>
    <script type="text/javascript" src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <script src="{{ asset('js/jquery.transform2d.js') }}"></script>
    <script src="{{ asset( 'js/jquery.transform3d.js') }}"></script>
    @stack('scripts')
    @stack('styles')
    </body>
</html>