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
    TextView mSlmReaderAppName;
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
        LayoutInflater.from(context).inflate(R.layout.reader_menu_app_title, (ViewGroup) this);
        this.mSlmReaderAppName = (TextView) findViewById(R.id.slm_reader_app_name);
        this.mSlmReaderAppSize = (TextView) findViewById(R.id.slm_reader_app_size);
    }

    public void setTitle(String string, String string2) {
        String string3 = "(" + string2 + ")";
        this.getViewTreeObserver().addOnGlobalLayoutListener(new ai(this, string, string3));
    }
}
