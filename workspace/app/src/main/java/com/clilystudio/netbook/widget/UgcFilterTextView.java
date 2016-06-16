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
        LayoutInflater.from(this.getContext()).inflate(R.layout.widget_ugc_filter_text, (ViewGroup) this);
        this.a = (TextView) this.findViewById(R.id.ugc_filter_name);
    }

    @Override
    public void setSelected(boolean bl) {
        if (bl) {
            this.a.setTextColor(am.a((Context) this.getContext(), (int) R.attr.backgroundNormal));
            this.setBackgroundResource(am.b((Context) this.getContext(), (int) R.attr.redRoundBg));
            return;
        }
        this.a.setTextColor(am.a((Context) this.getContext(), (int) 16842808));
        this.setBackgroundResource(am.b((Context) this.getContext(), (int) R.attr.backgroundSelector));
    }

    public void setText(String string) {
        this.b = string;
        this.a.setText(string);
    }
}
