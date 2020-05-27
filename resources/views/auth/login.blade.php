<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta
      name="author"
      content="Erick Christian, Agung Prasetyo, Ramdhani apaan lupa, Muhyi Abdul Basith"
    />

    <title>Login - Budaya Siswa</title>

    <meta
      name="msapplication-config"
      content="/docs/4.4/assets/img/favicons/browserconfig.xml"
    />
    <meta name="theme-color" content="#563d7c" />

    <link rel="stylesheet" href="css/app.css">

    <link href="css/floating-labels.css" rel="stylesheet" />
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon/favicon-16x16.png">
    <link rel="manifest" href="/favicon/site.webmanifest">
  </head>

  <body>
                
                    <form class="form-signin" method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="text-center mb-4">
                            <h1 class="h3 mb-3 font-weight-normal">Login</h1>
                          </div>

                        <div class="form-label-group">
                            <input
                              type="text"
                              name="username"
                              id="username"
                              class="form-control @error('username') is-invalid @enderror"
                              placeholder="Username"
                              value="{{ old('username') }}"
                              required
                              autofocus
                            />
                            <label for="username">Username</label>
                            @error('username')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                          </div>

                          <div class="form-label-group">
                            <input
                              type="password"
                              name="password"
                              id="password"
                              name="password"
                              class="form-control @error('password') is-invalid @enderror"
                              placeholder="Password"
                              required
                            />
                            <label for="password">Password</label>
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                          </div>

                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-2 text-center">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


    {{-- <form class="form-signin" method="POST" action="{{ route('login') }}">
      <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Login</h1>
      </div>

      <div class="form-label-group">
        <input
          type="text"
          name="username"
          id="username"
          class="form-control @error('username') is-invalid @enderror"
          placeholder="Username"
          value="{{ old('username') }}"
          required
          autofocus
        />
        <label for="username">Username</label>
        @error('username')
        <span class="invalid-feedback" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
      </div>



      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }} /> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">
        Login
      </button>
      <br>
        @if (Route::has('password.request'))
        <a class="btn btn-link" href="{{ route('password.request') }}">
            {{ __('Forgot Your Password?') }}
        </a>
        @endif
      <p class="mt-5 mb-3 text-muted text-center">© 2020</p>
    </form>
  </body>
</html> --}}
