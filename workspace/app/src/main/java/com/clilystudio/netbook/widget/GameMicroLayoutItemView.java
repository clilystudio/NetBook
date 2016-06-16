package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameMicroLayoutItemView extends LinearLayout {
    boolean a = false;
    GameDownloadButton mAction;
    GameImageView mImage;
    TextView mSubTitle;
    TextView mTitle;

    public GameMicroLayoutItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setOrientation(1);
        LayoutInflater.from(this.getContext()).inflate(R.layout.widget_game_layout_item, (ViewGroup) this);
        this.mImage = (GameImageView) findViewById(R.id.image);
        this.mTitle = (TextView) findViewById(R.id.title);
        this.mSubTitle = (TextView) findViewById(R.id.sub_title);
        this.mAction = (GameDownloadButton) findViewById(R.id.action);
    }

    public void setHasPlayed(boolean bl) {
        this.a = bl;
    }
}
