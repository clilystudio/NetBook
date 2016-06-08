package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;

import butterknife.InjectView;

public class GameLayoutItemView extends LinearLayout {

    @InjectView(2131493705)
    GameDownloadButton mAction;

    @InjectView(2131493025)
    GameImageView mImage;

    @InjectView(2131493018)
    TextView mSubTitle;

    @InjectView(2131492936)
    TextView mTitle;

    public GameLayoutItemView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setOrientation(1);
        LayoutInflater.from(getContext()).inflate(R.layout.widget_game_layout_item, this);
        mAction = (GameDownloadButton) findViewById(R.id.action);
        mImage = (GameImageView) findViewById(R.id.image);
        mSubTitle = (TextView) findViewById(R.id.sub_title);
        mTitle = (TextView) findViewById(R.id.title);
    }
}

