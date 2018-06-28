package com.awesomeproject;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

import com.awesomeproject.customview.CustomView;
import com.facebook.react.ReactActivity;

public class MainActivity extends ReactActivity {

    public static Activity activity;

    /**
     * Returns the name of the main component registered from JavaScript.
     * This is used to schedule rendering of the component.
     */
    @Override
    protected String getMainComponentName() {
        return "AwesomeProject";
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        MainActivity.activity = this;
    }

}
