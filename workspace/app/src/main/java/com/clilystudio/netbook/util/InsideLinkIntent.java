
package com.clilystudio.netbook.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkType;
import com.clilystudio.netbook.ui.AdWebViewActivity;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.SplashActivity;
import com.clilystudio.netbook.ui.game.GameDetailActivity;
import com.clilystudio.netbook.ui.post.BookHelpActivity;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;
import com.clilystudio.netbook.ui.ugcbook.UGCDetailActivity;

public class InsideLinkIntent extends Intent {

    public InsideLinkIntent(Context Context1, String String2, boolean boolean3)
    {
        b = true;
        a = Context1;
        new com.clilystudio.netbook.util.a.b();
        if( String2 == null )
            throw new UnImplementException( "Not implement" );
        a( com.clilystudio.netbook.util.a.b.a( String2 ) );
    }

    private Context a;     // final access specifier removed
    private boolean b;

    public InsideLinkIntent(Context Context1, InsideLink InsideLink2)
    {
        a = Context1;
        a( InsideLink2 );
    }

    public InsideLinkIntent(Context Context1, String String2)
    {
        a = Context1;
        new com.clilystudio.netbook.util.a.b();
        if( String2 == null )
            throw new UnImplementException( "Not implement" );
        a( com.clilystudio.netbook.util.a.b.a( String2 ) );
    }

    private void a()
    {
        if( a instanceof SplashActivity )
            putExtra( "from_splash", true );
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void a(InsideLink InsideLink1)
    {
    }
}
