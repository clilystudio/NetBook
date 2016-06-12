package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.ui.MaskAbleImageView;
import com.umeng.a.b;

import butterknife.ButterKnife;

public class HomeFindItem extends FrameLayout {

    MaskAbleImageView mIcon;
    ImageView mSubFlag;
    TextView mSubText;
    TextView mTitle;
    private Intent a;
    public HomeFindItem(Context Context1, String String2, int int3, Intent Intent4) {
        this(Context1, String2, int3, 0, Intent4);
    }

    public HomeFindItem(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public HomeFindItem(Context Context1, String String2, int int3, int int4, Intent Intent5) {
        super(Context1);
        a = Intent5;
        LayoutInflater.from(Context1).inflate(2130903283, (ViewGroup) this);
        ButterKnife.inject((View) this);
        mIcon.setImageResource(int3);
        mTitle.setText((CharSequence) String2);
        if (int4 != 0)
            mSubFlag.setImageResource(int4);
        setOnClickListener((View$OnClickListener) new Z(this, Context1, String2));
    }

    protected void a(Context Context1, String String2) {
        Context1.startActivity(a);
        b.a(Context1, "home_find_item_click", String2);
    }
}
