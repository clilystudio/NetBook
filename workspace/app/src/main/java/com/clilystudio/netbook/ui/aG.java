
package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.widget.CheckBox;

final class aG implements DialogInterface$OnClickListener {

    aG(BookInfoActivity BookInfoActivity1, CheckBox CheckBox2)
    {
        b = BookInfoActivity1;
        a = CheckBox2;
    }

    private CheckBox a;
    private BookInfoActivity b;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        BookInfoActivity.c( b, a.isChecked() );
    }
}
