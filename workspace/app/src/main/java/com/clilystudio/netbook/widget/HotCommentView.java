
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class HotCommentView extends LinearLayout {

    public HotCommentView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    public final void a(String String1)
    {
        new ab( this, (byte) 0 ).b( new String[] { String1 } );
    }
}
