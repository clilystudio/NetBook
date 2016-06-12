
package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;
import java.util.Date;

public final class B extends W {

    public B(LayoutInflater LayoutInflater1)
    {
        super( LayoutInflater1, 2130903299 );
        Resources Resources2;

        Resources2 = LayoutInflater1.getContext().getResources();
        a = Resources2.getColor( 2131427539 );
        b = Resources2.getColor( 2131427399 );
    }

    private int a;     // final access specifier removed
    private int b;     // final access specifier removed
    private int c = -1;

    public final void a(int int1)
    {
        c = int1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    protected final void a(int int1, Object Object2)
    {
    }

    protected final int[] a()
    {
        return new int[] { 2131493741, 2131493743, 2131493742, 2131493738, 2131493740 };
    }
}
