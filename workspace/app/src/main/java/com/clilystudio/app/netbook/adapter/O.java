package com.clilystudio.app.netbook.adapter;

import android.content.DialogInterface;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class O
        implements DialogInterface.OnClickListener {
    O(N paramN) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        S localS = new S(this.a.c);
        String[] arrayOfString = new String[2];
        arrayOfString[0] = am_CommonUtils.e().getToken();
        arrayOfString[1] = this.a.b.get_id();
        localS.execute(arrayOfString);
        G.a(this.a.c, this.a.a.q);
        G.d(this.a.c, this.a.b);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.O
 * JD-Core Version:    0.6.2
 */