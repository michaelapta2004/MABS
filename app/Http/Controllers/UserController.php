<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function get(string $userId)
    {
        $user = User::query()->find($userId);

        if ($user == null) {
            return response()->json(['message' => 'user not found'])->setStatusCode(404);
        }

        $response['message'] = "user found";
        $response['data'] = $user;

        return response()->json($response);
    }
}
