package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.GameGiftRoot;
import com.clilystudio.netbook.ui.game.GameGiftListActivity;

final class K
        implements View.OnClickListener {
    private /* synthetic */ GameGiftRoot a;
    private /* synthetic */ GameGiftView b;

    K(GameGiftView gameGiftView, GameGiftRoot gameGiftRoot) {
        this.b = gameGiftView;
        this.a = gameGiftRoot;
    }

    @Override
    public final void onClick(View view) {
        Activity activity = (Activity) this.b.getContext();
        Intent intent = GameGiftListActivity.a(activity, this.a, GameGiftView.a(this.b));
        intent.putExtra("title", "\u5168\u90e8\u793c\u5305");
        activity.startActivity(intent);
    }
}
