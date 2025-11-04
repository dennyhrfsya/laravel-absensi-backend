<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Permission;
use App\Models\User;
use Kreait\Firebase\Messaging\CloudMessage;
use Kreait\Firebase\Messaging\Notification;

class PermissionController extends Controller
{
    //index
    public function index(Request $request)
    {
        $permissions = Permission::with('user')
            ->when($request->input('name'), function ($query, $name) {
                $query->whereHas('user', function ($query) use ($name) {
                    $query->where('name', 'like', '%' . $name . '%');
                });
            })->orderBy('id', 'desc')->paginate(10);
        return view('pages.permission.index', compact('permissions'));

    }

    //view
    public function show($id)
    {
        $permission = Permission::with('user')->find($id);
        return view('pages.permission.show', compact('permission'));
    }

    //edit
    public function edit($id)
    {
        $permission = Permission::find($id);
        return view('pages.permission.edit', compact('permission'));
    }

    // update
    public function update(Request $request, $id)
    {
        $permission = Permission::find($id);
        $permission->is_approved = $request->is_approved;
        $str = $request->is_approved == 1 ? 'Disetujui' : 'Tidak Disetujui';
        $permission->save();
        $this->sendNotificationToUser($permission->user_id, 'Status Izin anda ' . $str);
        return redirect()->route('permissions.index')->with('success', 'Permission updated successfully');
    }

    //destroy
    public function destroy($id)
    {
        $permission = Permission::findOrFail($id);
        $permission->delete();
        return redirect()->route('permissions.index')->with('success', 'Permission deleted successfully');
    }

    //Fungsi notifikasi FCM token dengan firebase
    public function sendNotificationToUser($userId, $message)
    {
        // Dapatkan FCM token user dari tabele users
        $user = User::find($userId);
        $token = $user->fcm_token;

        // Kirim notifikasi ke perangkat android
        $messaging = app('firebase.messaging');
        $notification = Notification::create('Status Izin', $message);

        // $message = CloudMessage::withChangedTarget('token', $token)
        //     ->withNotification($notification);

        $message = CloudMessage::fromArray([
                'token' => $token,
                'notification' => $notification,
            ]);

        $messaging->send($message);
    }
}
