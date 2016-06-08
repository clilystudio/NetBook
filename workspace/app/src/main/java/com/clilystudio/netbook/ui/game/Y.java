package com.clilystudio.netbook.ui.game;

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

