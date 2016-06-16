package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class CommunitySection extends DividerSection {
    ImageView mDot;

    public CommunitySection(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R.layout.community_section, (ViewGroup) this);
        this.mDot = (ImageView) findViewById(R.id.dot);
    }

    public final void a(boolean bl) {
        if (bl) {
            this.mDot.setVisibility(View.VISIBLE);
            return;
        }
        this.mDot.setVisibility(View.GONE);
    }
}
