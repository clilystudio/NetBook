package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.GameGiftRoot;
import com.clilystudio.netbook.ui.game.GameGiftListActivity;

public class GameGiftView extends LinearLayout {
    private boolean a;

    public GameGiftView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ void a(final GameGiftView gameGiftView, final GameGiftRoot gameGiftRoot) {
        View view = gameGiftView.findViewById(R.id.game_gift_all);
        view.setVisibility(View.VISIBLE);
        view.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Activity activity = (Activity) gameGiftView.getContext();
                Intent intent = GameGiftListActivity.a(activity, gameGiftRoot, GameGiftView.a(gameGiftView));
                intent.putExtra("title", "全部礼包");
                activity.startActivity(intent);
            }
        });
    }

    static /* synthetic */ boolean a(GameGiftView gameGiftView) {
        return gameGiftView.a;
    }

    public final void a(String string, boolean bl) {
        this.a = bl;
        new L(this, 0).b(string);
    }
}
