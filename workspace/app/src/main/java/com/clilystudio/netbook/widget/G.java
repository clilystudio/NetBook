package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.view.a;

final class G implements View.OnClickListener {
    private /* synthetic */ a a;
    private /* synthetic */ String b;
    private /* synthetic */ GameGiftItemView c;

    G(GameGiftItemView gameGiftItemView, a a2, String string) {
        this.c = gameGiftItemView;
        this.a = a2;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        am.a((Context) this.c.getContext(), (String) this.b);
        e.a((Activity) ((Activity) this.c.getContext()), (String) "\u5df2\u590d\u5236");
        if (GameGiftItemView.b(this.c)) {
            am.a((Context) this.c.getContext(), (Game) GameGiftItemView.c((GameGiftItemView) this.c).game);
            b.a(this.c.getContext(), "micro_game_play_click", GameGiftItemView.c((GameGiftItemView) this.c).game.getName());
            return;
        }
        am.d((Context) this.c.getContext(), (String) GameGiftItemView.c((GameGiftItemView) this.c).game.getAndroidPackageName());
    }
}
