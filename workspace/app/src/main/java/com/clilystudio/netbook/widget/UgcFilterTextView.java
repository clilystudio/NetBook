package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.CommonUtil;

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
        LayoutInflater.from(this.getContext()).inflate(R.layout.widget_ugc_filter_text, this);
        this.a = (TextView) this.findViewById(R.id.ugc_filter_name);
    }

    @Override
    public void setSelected(boolean bl) {
        if (bl) {
            this.a.setTextColor(CommonUtil.getAttrColor(this.getContext(), R.attr.backgroundNormal));
            this.setBackgroundResource(CommonUtil.getAttrResource(this.getContext(), R.attr.redRoundBg));
            return;
        }
        this.a.setTextColor(CommonUtil.getAttrColor(this.getContext(), android.R.attr.textColorSecondary));
        this.setBackgroundResource(CommonUtil.getAttrResource(this.getContext(), R.attr.backgroundSelector));
    }

    public void setText(String string) {
        this.b = string;
        this.a.setText(string);
    }
}
