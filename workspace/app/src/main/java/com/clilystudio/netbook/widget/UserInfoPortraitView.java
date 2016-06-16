package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.nostra13.universalimageloader.core.d.a;

public class UserInfoPortraitView extends RelativeLayout {
    private final float a;
    private final float b;
    private TextView c;
    private SmartImageView d;
    private ProgressView e;

    public UserInfoPortraitView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = this.getResources().getDisplayMetrics().density;
        this.b = 80.0f * this.a;
    }

    static /* synthetic */ SmartImageView a(UserInfoPortraitView userInfoPortraitView) {
        return userInfoPortraitView.d;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) this.b, (int) this.b);
        RelativeLayout relativeLayout = new RelativeLayout(this.getContext());
        relativeLayout.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) this.b, (int) this.b);
        this.e = new ProgressView(this.getContext());
        this.e.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.e);
        this.d = new SmartImageView(this.getContext());
        float f = this.b - 11.0f * this.a;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) f, (int) f);
        layoutParams3.addRule(13);
        this.d.setLayoutParams(layoutParams3);
        relativeLayout.addView(this.d);
        this.addView(relativeLayout);
        this.c = new TextView(this.getContext());
        this.c.setBackgroundResource(R.drawable.bg_user_info_lv);
        this.c.setTextSize(12.0f);
        this.c.setGravity(17);
        this.c.setTextColor(this.getResources().getColor(17170443));
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(14);
        layoutParams4.addRule(12);
        layoutParams4.setMargins(0, 0, 0, (int) (4.0f * this.a));
        this.c.setLayoutParams(layoutParams4);
        this.addView(this.c);
    }

    public void setAvatar(String string) {
        f.a().a(string, (a) ((Object) new aD(this)));
    }

    public void setExp(int n) {
        this.e.setMax(100);
        this.e.setProgress(n);
    }

    public void setLv(int n) {
        this.c.setText("lv." + n);
    }
}
