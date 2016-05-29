package com.clilystudio.app.netbook.ui.game;

import android.content.Intent;
import android.view.View;

final class Y
        implements View.OnClickListener {
    Y(GameMicroFragment.LayoutAdapter paramLayoutAdapter) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a.a.getActivity(), GameLocalListActivity.class);
        this.a.a.startActivity(localIntent);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.Y
 * JD-Core Version:    0.6.2
 */