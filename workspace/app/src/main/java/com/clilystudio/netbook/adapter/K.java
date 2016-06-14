package com.clilystudio.netbook.adapter;

import android.content.Intent;
import android.view.View;

final class K implements View.OnClickListener {
    private /* synthetic */ Intent a;
    private /* synthetic */ G b;

    K(G g, Intent intent) {
        this.b = g;
        this.a = intent;
    }

    @Override
    public final void onClick(View view) {
        G.a(this.b).startActivity(this.a);
    }
}
