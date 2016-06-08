package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class UgcFilterTextView extends RelativeLayout {
    private TextView a;
    private String b;

    public UgcFilterTextView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    public final String a() {
        return this.b;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        LayoutInflater.from(getContext()).inflate(2130903422, this);
        this.a = ((TextView) findViewById(2131494012));
    }

    public void setSelected(boolean paramBoolean) {
        if (paramBoolean) {
            this.a.setTextColor(am.a(getContext(), 2130771972));
            setBackgroundResource(am.b(getContext(), 2130771998));
            return;
        }
        this.a.setTextColor(am.a(getContext(), 16842808));
        setBackgroundResource(am.b(getContext(), 2130771974));
    }

    public void setText(String paramString) {
        this.b = paramString;
        this.a.setText(paramString);
    }
}

