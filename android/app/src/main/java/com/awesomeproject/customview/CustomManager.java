package com.awesomeproject.customview;

import android.app.AlertDialog;
import android.content.DialogInterface;

import com.awesomeproject.MainActivity;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class CustomManager extends ReactContextBaseJavaModule {

    public CustomManager(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "RCTCustomManager";
    }

    @ReactMethod
    public void show(String title, String msg) {
        AlertDialog alertDialog = new AlertDialog.Builder(MainActivity.activity).create();
        alertDialog.setTitle(title);
        alertDialog.setMessage(msg);
        alertDialog.setButton(AlertDialog.BUTTON_NEUTRAL, "OK",
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                    }
                });
        alertDialog.show();
    }

}
