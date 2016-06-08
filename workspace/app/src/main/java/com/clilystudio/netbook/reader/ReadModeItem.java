package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class ReadModeItem extends FrameLayout {
    @InjectView(2131493702)
    TextView mChapter;
    @InjectView(2131493703)
    TextView mFlagSelect;
    @InjectView(2131493701)
    TextView mFlagWeb;
    @InjectView(2131493028)
    ImageView mIcon;
    @InjectView(2131492928)
    TextView mName;
    private Activity a;
    private String b;
    private String c;

    public ReadModeItem(Activity paramActivity, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString1, String paramString2) {
        super(paramActivity);
        this.a = paramActivity;
        this.b = paramString1;
        this.c = paramString2;
        LayoutInflater.from(this.a).inflate(2130903288, this);
        ButterKnife.inject(this);
        this.mIcon.setImageResource(paramInt1);
        this.mName.setText(paramInt2);
        if (paramInt3 == paramInt4) {
            this.mFlagSelect.setVisibility(0);
            this.mFlagSelect.setText("当前选择");
        }
        if (a.f(paramInt3))
            this.mFlagWeb.setVisibility(0);
        this.mChapter.setVisibility(8);
        setOnClickListener(new O(this, paramInt4, paramInt3));
    }

    public ReadModeItem(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    private static void a() {
        i.a().c(new v(1));
    }
}

