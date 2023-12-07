<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use Illuminate\Http\Request;
use App\Http\Services\Cart\CartService;;
use App\Models\Cart;

class CartController extends Controller
{
    protected $cart;
    protected $cartService;
    public function __construct(CartService $cartService)
    {
        $this->cart = $cartService;
    }

    public function index()
    {
        return view('admin.carts.customer', [
            'title' => 'Danh Sách Đơn Đặt Hàng',
            'customers' => $this->cart->getCustomer()
        ]);
    }

    public function show(Customer $customer)
    {
        $carts = $this->cart->getProductForCart($customer);

        return view('admin.carts.detail', [
            'title' => 'Chi Tiết Đơn Hàng: ' . $customer->name,
            'customer' => $customer,
            'carts' => $carts
        ]);
    }
    public function destroy(Request $request)
    {
        $result = $this->cartService->delete($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công đơn hàng'
            ]);
        }

        return response()->json([ 'error' => true ]);
    }
  
}
