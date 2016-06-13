package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.widget.CheckBox;

import com.clilystudio.netbook.model.BookShelf;

final class s
        implements DialogInterface.OnClickListener {
    private /* synthetic */ BookShelf a;
    private /* synthetic */ CheckBox b;
    private /* synthetic */ HomeShelfFragment c;

    s(HomeShelfFragment homeShelfFragment, BookShelf bookShelf, CheckBox checkBox) {
        this.c = homeShelfFragment;
        this.a = bookShelf;
        this.b = checkBox;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        HomeShelfFragment.a(this.c, this.a, this.b.isChecked());
    }
}
