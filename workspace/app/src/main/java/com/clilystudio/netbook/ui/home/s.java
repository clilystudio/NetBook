
package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.widget.CheckBox;
import com.clilystudio.netbook.model.BookShelf;

final class s implements DialogInterface$OnClickListener {

    s(HomeShelfFragment HomeShelfFragment1, BookShelf BookShelf2, CheckBox CheckBox3)
    {
        c = HomeShelfFragment1;
        a = BookShelf2;
        b = CheckBox3;
    }

    private BookShelf a;
    private CheckBox b;
    private HomeShelfFragment c;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        HomeShelfFragment.a( c, a, b.isChecked() );
    }
}
