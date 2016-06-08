package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class CommunitySection extends DividerSection {

    @InjectView(2131493375)
    ImageView mDot;

    public CommunitySection(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        LayoutInflater.from(paramContext).inflate(2130903177, this);
        ButterKnife.inject(this);
    }

    public final void a(boolean paramBoolean) {
        if (paramBoolean) {
            this.mDot.setVisibility(0);
            return;
        }
        this.mDot.setVisibility(8);
    }
}

