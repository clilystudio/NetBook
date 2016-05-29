package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.ButterKnife;
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
        LayoutInflater.from(getContext()).inflate(2130903421, this);
        ButterKnife.inject(this);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.GameLayoutItemView
 * JD-Core Version:    0.6.2
 */