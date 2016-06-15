package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class MenuGameTitle extends LinearLayout {
    @InjectView(value = 2131493870)
    TextView mSlmReaderAppName;
    @InjectView(value = 2131493871)
    TextView mSlmReaderAppSize;

    public MenuGameTitle(Context context) {
        super(context);
        this.a(context);
    }

    public MenuGameTitle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a(context);
        if (this.isInEditMode()) {
            this.setTitle("wefijwefijweifjwiefjwefiwjefi", "12312");
            this.setOrientation(1);
        }
    }

    static /* synthetic */ float a(MenuGameTitle menuGameTitle, int n) {
        return menuGameTitle.getResources().getDisplayMetrics().density * (float) 3;
    }

    private void a(Context context) {
        LayoutInflater.from(context).inflate(2130903361, (ViewGroup) this);
        this.mSlmReaderAppName = (TextView) findViewById(2131493870);
        this.mSlmReaderAppSize = (TextView) findViewById(2131493871);
    }

    public void setTitle(String string, String string2) {
        String string3 = "(" + string2 + ")";
        this.getViewTreeObserver().addOnGlobalLayoutListener(new ai(this, string, string3));
    }
}
