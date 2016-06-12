package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.ButterKnife;

public class GameMicroLayoutItemView extends LinearLayout {

    GameDownloadButton mAction;
    GameImageView mImage;
    TextView mSubTitle;
    TextView mTitle;
    boolean a = false;
    public GameMicroLayoutItemView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setOrientation(1);
        LayoutInflater.from(getContext()).inflate(2130903421, (ViewGroup) this);
        ButterKnife.inject((View) this);
    }

    public void setHasPlayed(boolean boolean1) {
        a = boolean1;
    }
}
