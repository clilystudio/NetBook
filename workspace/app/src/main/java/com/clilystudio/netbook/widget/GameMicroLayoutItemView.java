package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameMicroLayoutItemView
        extends LinearLayout {
    boolean a = false;
    @InjectView(value = 2131493705)
    GameDownloadButton mAction;
    @InjectView(value = 2131493025)
    GameImageView mImage;
    @InjectView(value = 2131493018)
    TextView mSubTitle;
    @InjectView(value = 2131492936)
    TextView mTitle;

    public GameMicroLayoutItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setOrientation(1);
        LayoutInflater.from(this.getContext()).inflate(2130903421, (ViewGroup) this);
        ButterKnife.inject(this);
    }

    public void setHasPlayed(boolean bl) {
        this.a = bl;
    }
}
