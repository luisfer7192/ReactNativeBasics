package com.awesomeproject.customview;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import com.facebook.react.common.MapBuilder.Builder;

import com.awesomeproject.MainActivity;
import com.awesomeproject.R;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

import java.util.Map;

public class CustomViewManager extends SimpleViewManager<CustomView> {

    public static final String REACT_CLASS = "RCTCustomView";

    @Override
    public String getName() { return REACT_CLASS; }

    @Override
    public CustomView createViewInstance(ThemedReactContext context) {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        CustomView view = (CustomView)inflater.inflate(R.layout.custom_view, null);
        return view;
    }

    @ReactProp(name = "message")
    public void setMessage(CustomView view, String message) {
        view.getMsgTextView().setText("Property from JS: " + message);
    }

    public Map getExportedCustomBubblingEventTypeConstants() {

        Builder events = MapBuilder.builder();

        Map onIncreaseHandler = MapBuilder.of("phasedRegistrationNames",MapBuilder.of("bubbled", "onIncreaseValue"));
        events.put("increaseValue", onIncreaseHandler);

        return events.build();
    }

}
