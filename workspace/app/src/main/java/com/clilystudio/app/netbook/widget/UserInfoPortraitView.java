package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.app.netbook.ui.SmartImageView;

public class UserInfoPortraitView extends RelativeLayout {
    private final float a = getResources().getDisplayMetrics().density;
    private final float b = 80.0F * this.a;
    private TextView c;
    private SmartImageView d;
    private ProgressView e;

    public UserInfoPortraitView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams((int) this.b, (int) this.b);
        RelativeLayout localRelativeLayout = new RelativeLayout(getContext());
        localRelativeLayout.setLayoutParams(localLayoutParams1);
        RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams((int) this.b, (int) this.b);
        this.e = new ProgressView(getContext());
        this.e.setLayoutParams(localLayoutParams2);
        localRelativeLayout.addView(this.e);
        this.d = new SmartImageView(getContext());
        float f = this.b - 11.0F * this.a;
        RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams((int) f, (int) f);
        localLayoutParams3.addRule(13);
        this.d.setLayoutParams(localLayoutParams3);
        localRelativeLayout.addView(this.d);
        addView(localRelativeLayout);
        this.c = new TextView(getContext());
        this.c.setBackgroundResource(2130837697);
        this.c.setTextSize(12.0F);
        this.c.setGravity(17);
        this.c.setTextColor(getResources().getColor(17170443));
        RelativeLayout.LayoutParams localLayoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        localLayoutParams4.addRule(14);
        localLayoutParams4.addRule(12);
        localLayoutParams4.setMargins(0, 0, 0, (int) (4.0F * this.a));
        this.c.setLayoutParams(localLayoutParams4);
        addView(this.c);
    }

    public void setAvatar(String paramString) {
        f.a().a(paramString, new aD(this));
    }

    public void setExp(int paramInt) {
        this.e.setMax(100);
        this.e.setProgress(paramInt);
    }

    public void setLv(int paramInt) {
        this.c.setText("lv." + paramInt);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.UserInfoPortraitView
 * JD-Core Version:    0.6.2
 */