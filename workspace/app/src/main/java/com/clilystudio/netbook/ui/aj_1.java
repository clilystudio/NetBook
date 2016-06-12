
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

final class aj implements View$OnClickListener {

    aj(BookCategoryActivity BookCategoryActivity1, boolean boolean2, String String3)
    {
        c = BookCategoryActivity1;
        a = boolean2;
        b = String3;
    }

    private boolean a;
    private String b;
    private BookCategoryActivity c;

    public final void onClick(View View1)
    {
        String String2;

        c.startActivity( BookCategoryListActivity.a( (Context) c, a, b ) );
        if( a )
            String2 = "\u7537\u751F - ";
        else
            String2 = "\u5973\u751F - ";
        com.clilystudio.netbook.hpay100.a.a.p( (Context) c, new StringBuilder().append( String2 ).append( b ).toString() );
    }
}
