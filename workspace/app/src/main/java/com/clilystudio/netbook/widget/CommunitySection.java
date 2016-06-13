package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class CommunitySection
        extends DividerSection {
    @InjectView(value = 2131493375)
    ImageView mDot;

    public CommunitySection(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(2130903177, (ViewGroup) this);
        ButterKnife.inject(this);
    }

    public final void a(boolean bl) {
        if (bl) {
            this.mDot.setVisibility(0);
            return;
        }
        this.mDot.setVisibility(8);
    }
}
