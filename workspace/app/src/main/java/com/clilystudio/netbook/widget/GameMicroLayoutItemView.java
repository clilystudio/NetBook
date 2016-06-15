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
        LayoutInflater.from(this.getContext()).inflate(2130903421, (ViewGroup) this);
        this.mImage = (GameImageView) findViewById(2131493025);
        this.mTitle = (TextView) findViewById(2131492936);
        this.mSubTitle = (TextView) findViewById(2131493018);
        this.mAction = (GameDownloadButton) findViewById(2131493705);
    }

    public void setHasPlayed(boolean bl) {
        this.a = bl;
    }
}
