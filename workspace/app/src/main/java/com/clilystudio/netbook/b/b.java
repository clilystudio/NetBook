
package com.clilystudio.netbook.b;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

public abstract class b extends ClickableSpan {

    public b(Context Context1)
    {
        a = Context1;
        b = a.getResources().getColor( 2131427452 );
        d = a.getResources().getColor( 2131427453 );
        c = a.getResources().getColor( 17170445 );
    }

    protected Context a;
    private int b;
    private int c;
    private int d;
    private boolean e;

    abstract Intent a();

    public final void a(boolean boolean1)
    {
        e = boolean1;
    }

    public void onClick(View View1)
    {
        Intent Intent2 = a();

        a.startActivity( Intent2 );
    }

    public void updateDrawState(TextPaint TextPaint1)
    {
        int int2;

        super.updateDrawState( TextPaint1 );
        TextPaint1.setUnderlineText( false );
        TextPaint1.setColor( b );
        if( e )
            int2 = d;
        else
            int2 = c;
        TextPaint1.bgColor = int2;
    }
}
