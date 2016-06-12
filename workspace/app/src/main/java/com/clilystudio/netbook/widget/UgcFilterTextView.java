package com.clilystudio.netbook.widget;

import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class UgcFilterTextView extends RelativeLayout {

    private TextView a;
    private String b;
    public UgcFilterTextView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public final String a() {
        return b;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        LayoutInflater.from(getContext()).inflate(2130903422, (ViewGroup) this);
        a = (TextView) findViewById(2131494012);
    }

    public void setSelected(boolean boolean1) {
        if (boolean1) {
            a.setTextColor(am.a(getContext(), 2130771972));
            setBackgroundResource(am.b(getContext(), 2130771998));
        } else {
            a.setTextColor(am.a(getContext(), 16842808));
            setBackgroundResource(am.b(getContext(), 2130771974));
        }
    }

    public void setText(String String1) {
        b = String1;
        a.setText((CharSequence) String1);
    }
}
