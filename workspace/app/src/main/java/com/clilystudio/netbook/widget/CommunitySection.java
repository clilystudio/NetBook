package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;

import com.clilystudio.netbook.R;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class CommunitySection extends DividerSection {
    ImageView mDot;

    public CommunitySection(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        LayoutInflater.from(paramContext).inflate(R.layout.community_section, this);
        mDot = (ImageView)findViewById(R.id.dot);
    }

    public final void a(boolean paramBoolean) {
        if (paramBoolean) {
            this.mDot.setVisibility(0);
            return;
        }
        this.mDot.setVisibility(8);
    }
}

