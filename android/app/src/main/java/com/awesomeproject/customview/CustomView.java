package com.awesomeproject.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.awesomeproject.R;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.events.RCTEventEmitter;

import java.util.Map;

/**
 * TODO: document your custom view class.
 */
public class CustomView extends RelativeLayout {

    public CustomView(Context context) {
        super(context);
    }

    public CustomView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public CustomView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void onFinishInflate() {
        super.onFinishInflate();

        Button button = this.getSendButton();
        button.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                CustomView.this.increaseValue();
            }
        });
    }

    public void increaseValue() {
        WritableMap event = Arguments.createMap();
        ReactContext reactContext = (ReactContext)getContext();
        reactContext.getJSModule(RCTEventEmitter.class).receiveEvent(
                getId(),
                "increaseValue",
                event);
    }

    public TextView getMsgTextView(){
        return (TextView)this.findViewById(R.id.msg);
    }

    public Button getSendButton(){
        return (Button)this.findViewById(R.id.button_send);
    }


}
