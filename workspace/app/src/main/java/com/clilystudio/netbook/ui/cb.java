
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface$OnClickListener;
import com.cocosw.bottomsheet.g;

public final class cb {

    public cb(Activity Activity1, cd cd2)
    {
        a = Activity1;
        b = cd2;
    }

    private Activity a;
    private cd b;

    static cd a(cb cb1)
    {
        return cb1.b;
    }

    public final Dialog a()
    {
        return (Dialog) new g( a ).a( 2131558407 ).a().a( (DialogInterface$OnClickListener) new cc( this ) ).b();
    }
}
