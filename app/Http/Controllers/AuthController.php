<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $request->validate([
            'username' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'password' => 'required',
        ]);

        $isUsernameExist = User::query()->where('username', $request->username)->get();
        $isEmailExist = User::query()->where('email', $request->email)->get();
        $isPhoneExist = User::query()->where('phone', $request->phone)->get();

        if (count($isUsernameExist) > 0) {
            $response['message'] = "username already exist";
            return response()->json($response)->setStatusCode(409);
        }
        if (count($isEmailExist) > 0) {
            $response['message'] = "email already exist";
            return response()->json($response)->setStatusCode(409);
        }
        if (count($isPhoneExist) > 0) {
            $response['message'] = "phone number already exist";
            return response()->json($response)->setStatusCode(409);
        }

        $user = User::query()->create([
            'username' => $request->username,
            'email' => $request->email,
            'phone' => $request->phone,
            'password' => Hash::make($request->password),
        ]);

        $user->save();

        $response['message'] = "new user registered";

        return response()->json($response)->setStatusCode(201);
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();

        if ($user == null || !Hash::check($request->password, $user->password)) {
            return response()->json(['message' => 'username or password invalid'])->setStatusCode(401);
        }

        $response['message'] = "login success";
        $response['data'] = $user;

        return response()->json($response);
    }
}
