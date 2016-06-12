
package com.clilystudio.netbook.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface$OnClickListener;
import com.cocosw.bottomsheet.g;
import com.clilystudio.netbook.ui.cd;

public final class c {

    public c(Activity Activity1, cd cd2)
    {
        a = Activity1;
        b = cd2;
    }

    private Activity a;
    private cd b;

    static cd a(c c1)
    {
        return c1.b;
    }

    public final Dialog a()
    {
        return (Dialog) new g( a ).a( 2131558406 ).a().a( (DialogInterface$OnClickListener) new d( this ) ).b();
    }
}
