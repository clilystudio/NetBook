package com.clilystudio.app.netbook.widget;

import android.view.View;

import com.clilystudio.app.netbook.model.Game;
import com.clilystudio.app.netbook.ui.game.GameDetailActivity;

final class P
        implements View.OnClickListener {
    P(GameMicroLayoutItemView paramGameMicroLayoutItemView, Game paramGame) {
    }

    public final void onClick(View paramView) {
        this.b.getContext().startActivity(GameDetailActivity.a(this.b.getContext(), this.a.get_id(), true, this.b.a));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.P
 * JD-Core Version:    0.6.2
 */