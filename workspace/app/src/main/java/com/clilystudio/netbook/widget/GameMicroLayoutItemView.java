package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.MaskAbleImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameMicroLayoutItemView extends LinearLayout {
    boolean a = false;
    GameDownloadButton mAction;
    GameImageView mImage;
    TextView mSubTitle;
    TextView mTitle;

    public GameMicroLayoutItemView(Context paramContext, AttributeSet paramAttributeSet) {
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

    public void setHasPlayed(boolean paramBoolean) {
        this.a = paramBoolean;
    }
}

