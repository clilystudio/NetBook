
package com.clilystudio.netbook.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager$LayoutParams;

public final class a extends Dialog implements DialogInterface {

    public a(Context Context1)
    {
        super( Context1, 2131165376 );
    }

    private View a;

    public final a a(View View1)
    {
        a = View1;
        return this;
    }

    protected final void onCreate(Bundle Bundle1)
    {
        Context Context2;
        View View3;
        WindowManager$LayoutParams LayoutParams4;

        super.onCreate( Bundle1 );
        Context2 = getContext();
        setCanceledOnTouchOutside( true );
        View3 = View.inflate( Context2, 2130903169, null );
        ((ViewGroup) View3.findViewById( 2131493363 )).addView( a );
        setContentView( View3 );
        LayoutParams4 = getWindow().getAttributes();
        LayoutParams4.height = -2;
        LayoutParams4.width = -1;
        LayoutParams4.gravity = 80;
        getWindow().setAttributes( LayoutParams4 );
    }
}
