package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.GameGiftRoot;
import com.clilystudio.netbook.ui.game.GameGiftListActivity;

final class K implements View$OnClickListener {

    private GameGiftRoot a;
    private GameGiftView b;
    K(GameGiftView GameGiftView1, GameGiftRoot GameGiftRoot2) {
        b = GameGiftView1;
        a = GameGiftRoot2;
    }

    public final void onClick(View View1) {
        Object Object2 = (Activity) b.getContext();
        Intent Intent3 = GameGiftListActivity.a((Context) Object2, a, GameGiftView.a(b));

        Intent3.putExtra("title", "\u5168\u90E8\u793C\u5305");
        ((Activity) Object2).startActivity(Intent3);
    }
}
