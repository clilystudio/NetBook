
package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface$OnClickListener;
import com.cocosw.bottomsheet.g;
import com.clilystudio.netbook.model.PaySheetItem;
import java.util.Iterator;
import java.util.List;

public final class ak {

    public ak(Activity Activity1, am am2, List List3)
    {
        a = am2;
        b = new g( Activity1 );
        c = List3;
        b();
    }

    private am a;
    private g b;     // final access specifier removed
    private List c;

    static am a(ak ak1)
    {
        return ak1.a;
    }

    static List b(ak ak1)
    {
        return ak1.c;
    }

    private void b()
    {
        Iterator Iterator1 = c.iterator();

        while( Iterator1.hasNext() )
        {
            PaySheetItem PaySheetItem2 = (PaySheetItem) Iterator1.next();

            b.a( PaySheetItem2.getId(), PaySheetItem2.getIconId(), PaySheetItem2.getTextId() );
        }
    }

    public final Dialog a()
    {
        b.a().a( (DialogInterface$OnClickListener) new al( this ) );
        return (Dialog) b.b();
    }
}
