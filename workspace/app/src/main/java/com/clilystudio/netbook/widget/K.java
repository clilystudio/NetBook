package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.model.GameGiftRoot;
import com.clilystudio.netbook.ui.game.GameGiftListActivity;

final class K
        implements View.OnClickListener {
    K(GameGiftView paramGameGiftView, GameGiftRoot paramGameGiftRoot) {
    }

    public final void onClick(View paramView) {
        Activity localActivity = (Activity) this.b.getContext();
        Intent localIntent = GameGiftListActivity.a(localActivity, this.a, GameGiftView.a(this.b));
        localIntent.putExtra("title", "全部礼包");
        localActivity.startActivity(localIntent);
    }
}

