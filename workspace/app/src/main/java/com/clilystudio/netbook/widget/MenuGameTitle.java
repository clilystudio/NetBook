package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class MenuGameTitle extends LinearLayout {
    TextView mSlmReaderAppName;
    TextView mSlmReaderAppSize;

    public MenuGameTitle(Context paramContext) {
        super(paramContext);
        a(paramContext);
    }

    public MenuGameTitle(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        a(paramContext);
        if (isInEditMode()) {
            setTitle("wefijwefijweifjwiefjwefiwjefi", "12312");
            setOrientation(1);
        }
    }

    private void a(Context paramContext) {
        LayoutInflater.from(paramContext).inflate(R.layout.reader_menu_app_title, this);
        mSlmReaderAppName = (TextView) findViewById(R.id.slm_reader_app_name);
        mSlmReaderAppSize = (TextView) findViewById(R.id.slm_reader_app_size);
     }

    public void setTitle(String paramString1, String paramString2) {
        String str = "(" + paramString2 + ")";
        getViewTreeObserver().addOnGlobalLayoutListener(new ai(this, paramString1, str));
    }
}

