package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;

final class Y implements View.OnClickListener {
    private /* synthetic */ GameMicroFragment$LayoutAdapter a;

    Y(GameMicroFragment$LayoutAdapter layoutAdapter) {
        this.a = layoutAdapter;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a.a.getActivity(), GameLocalListActivity.class);
        this.a.a.startActivity(intent);
    }
}
