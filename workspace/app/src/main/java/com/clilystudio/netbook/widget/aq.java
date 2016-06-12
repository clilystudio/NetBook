
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.support.v7.widget.m;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class aq implements View$OnClickListener {

    aq(PostHeader PostHeader1)
    {
        a = PostHeader1;
    }

    private PostHeader a;

    public final void onClick(View View1)
    {
        Context Context2 = a.getContext();

        if( Context2 instanceof AbsPostActivity )
        {
            Object Object3 = (AbsPostActivity) Context2;
            com.koushikdutta.async.http.a a4 = new com.koushikdutta.async.http.a( (Context) Object3, View1 );

            a4.b().inflate( 2131558403, a4.a() );
            a4.a( (m) new ar( this, (AbsPostActivity) Object3 ) );
            a4.c();
        }
    }
}
