package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.Game;

import butterknife.ButterKnife;

public class GameLayoutItemView extends LinearLayout {

    GameDownloadButton mAction;
    GameImageView mImage;
    TextView mSubTitle;
    TextView mTitle;
    public GameLayoutItemView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void a(GameLayoutItemView GameLayoutItemView1, Context Context2, Game Game3) {
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setOrientation(1);
        LayoutInflater.from(getContext()).inflate(2130903421, (ViewGroup) this);
        ButterKnife.inject((View) this);
    }
}
