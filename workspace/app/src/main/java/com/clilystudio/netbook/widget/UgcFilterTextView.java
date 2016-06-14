package com.clilystudio.netbook.widget;

import android.content.Context;
import com.clilystudio.netbook.am;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class UgcFilterTextView extends RelativeLayout {
    private TextView a;
    private String b;

    public UgcFilterTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final String a() {
        return this.b;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        LayoutInflater.from(this.getContext()).inflate(2130903422, (ViewGroup) this);
        this.a = (TextView) this.findViewById(2131494012);
    }

    @Override
    public void setSelected(boolean bl) {
        if (bl) {
            this.a.setTextColor(am.a((Context) this.getContext(), (int) 2130771972));
            this.setBackgroundResource(am.b((Context) this.getContext(), (int) 2130771998));
            return;
        }
        this.a.setTextColor(am.a((Context) this.getContext(), (int) 16842808));
        this.setBackgroundResource(am.b((Context) this.getContext(), (int) 2130771974));
    }

    public void setText(String string) {
        this.b = string;
        this.a.setText(string);
    }
}
