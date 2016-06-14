package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.Game;
import com.maxthon.main.InitActivity;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameLayoutItemView extends LinearLayout {
    @InjectView(value = 2131493705)
    GameDownloadButton mAction;
    @InjectView(value = 2131493025)
    GameImageView mImage;
    @InjectView(value = 2131493018)
    TextView mSubTitle;
    @InjectView(value = 2131492936)
    TextView mTitle;

    public GameLayoutItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ void a(GameLayoutItemView gameLayoutItemView, Context context, Game game) {
        b.a(context, "aoyou_game_click_count", game.getName());
        Intent intent = new Intent(context, InitActivity.class);
        intent.setData(Uri.parse(game.getAndroidLink()));
        intent.putExtra("dependence", false);
        context.startActivity(intent);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setOrientation(1);
        LayoutInflater.from(this.getContext()).inflate(2130903421, (ViewGroup) this);
        ButterKnife.inject(this);
    }
}
