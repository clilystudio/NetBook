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
    GameDownloadButton mAction;
    GameImageView mImage;
    TextView mSubTitle;
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
        this.mImage = (GameImageView) findViewById(2131493025);
        this.mTitle = (TextView) findViewById(2131492936);
        this.mSubTitle = (TextView) findViewById(2131493018);
        this.mAction = (GameDownloadButton) findViewById(2131493705);
    }
}
