package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.view.View;

final class t implements View.OnClickListener {
    private /* synthetic */ o a;

    t(o o2) {
        this.a = o2;
    }

    @Override
    public final void onClick(View view) {
        new h(o.a(this.a)).a(true).a(R.string.auto_buy_chapter_prompt_title).b(R.string.auto_buy_chapter_prompt_content).a("\u786e\u5b9a", (DialogInterface.OnClickListener) new u(this)).b();
    }
}
