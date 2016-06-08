package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.ui.MaskAbleImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class HomeFindItem extends FrameLayout {
    @InjectView(2131493028)
    MaskAbleImageView mIcon;
    @InjectView(2131493681)
    ImageView mSubFlag;
    @InjectView(2131493683)
    TextView mSubText;
    @InjectView(2131492936)
    TextView mTitle;
    private Intent a;

    public HomeFindItem(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    public HomeFindItem(Context paramContext, String paramString, int paramInt1, int paramInt2, Intent paramIntent) {
        super(paramContext);
        this.a = paramIntent;
        LayoutInflater.from(paramContext).inflate(2130903283, this);
        ButterKnife.inject(this);
        this.mIcon.setImageResource(paramInt1);
        this.mTitle.setText(paramString);
        if (paramInt2 != 0)
            this.mSubFlag.setImageResource(paramInt2);
        setOnClickListener(new Z(this, paramContext, paramString));
    }

    public HomeFindItem(Context paramContext, String paramString, int paramInt, Intent paramIntent) {
        this(paramContext, paramString, paramInt, 0, paramIntent);
    }

    protected void a(Context paramContext, String paramString) {
        paramContext.startActivity(this.a);
        b.a(paramContext, "home_find_item_click", paramString);
    }
}

