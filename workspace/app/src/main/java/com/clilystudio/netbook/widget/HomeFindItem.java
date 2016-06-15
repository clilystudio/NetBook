package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.ui.MaskAbleImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class HomeFindItem extends FrameLayout {
    MaskAbleImageView mIcon;
    ImageView mSubFlag;
    TextView mSubText;
    TextView mTitle;
    private Intent a;

    public HomeFindItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HomeFindItem(Context context, String string, int n, int n2, Intent intent) {
        super(context);
        this.a = intent;
        LayoutInflater.from(context).inflate(2130903283, (ViewGroup) this);
        this.mIcon = (MaskAbleImageView) findViewById(2131493028);
        this.mTitle = (TextView) findViewById(2131492936);
        this.mSubFlag = (ImageView) findViewById(2131493681);
        this.mSubText = (TextView) findViewById(2131493683);
        this.mIcon.setImageResource(n);
        this.mTitle.setText(string);
        if (n2 != 0) {
            this.mSubFlag.setImageResource(n2);
        }
        this.setOnClickListener(new Z(this, context, string));
    }

    public HomeFindItem(Context context, String string, int n, Intent intent) {
        this(context, string, n, 0, intent);
    }

    protected void a(Context context, String string) {
        context.startActivity(this.a);
        b.a(context, "home_find_item_click", string);
    }
}
