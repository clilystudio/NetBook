
package com.clilystudio.netbook.ui.ugcbook;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;
import java.util.Iterator;
import java.util.List;

public final class y extends W {

    public y(UGCGuideAddBookActivity UGCGuideAddBookActivity1, LayoutInflater LayoutInflater2)
    {
        super( LayoutInflater2, 2130903411 );
        a = UGCGuideAddBookActivity1;
        b = UGCGuideAddBookActivity.b( UGCGuideAddBookActivity1 ).getBooks();
    }

    UGCGuideAddBookActivity a;     // final access specifier removed
    private List b;     // final access specifier removed
// Error: Internal #201: 
// The following method may not be correct.

    protected final void a(int int1, Object Object2)
    {
    }

    protected final int[] a()
    {
        return new int[] { 2131493616, 2131493605, 2131493617, 2131493753, 2131494021, 2131494022 };
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3)
    {
        View View4 = super.getView( int1, View2, ViewGroup3 );

        ((Button) View4.findViewById( 2131494021 )).setOnClickListener( (View$OnClickListener) new z( this, int1 ) );
        a( int1, View4, getItem( int1 ) );
        return View4;
    }
}
