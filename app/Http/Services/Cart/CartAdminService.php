<?php


namespace App\Http\Services\Cart;

use App\Models\Cart;



class CartAdminService
{
   

    public function delete($request)
    {
        $cart = Cart::where('id', $request->input('id'))->first();
        if($cart) {
            $cart->delete();
            return true;
        }

        return false;
    }
}
