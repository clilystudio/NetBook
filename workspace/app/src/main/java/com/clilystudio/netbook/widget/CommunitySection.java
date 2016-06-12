package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import butterknife.ButterKnife;

public class CommunitySection extends DividerSection {

    ImageView mDot;

    public CommunitySection(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        LayoutInflater.from(Context1).inflate(2130903177, (ViewGroup) this);
        ButterKnife.inject((View) this);
    }

    public final void a(boolean boolean1) {
        if (boolean1)
            mDot.setVisibility(0);
        else
            mDot.setVisibility(8);
    }
}
