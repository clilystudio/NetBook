
package com.clilystudio.netbook.ui.ugcbook;

import android.widget.Filter;
import com.clilystudio.netbook.widget.ax;
import java.util.Calendar;

final class s implements ax {

    s(UGCGuideAddBookActivity UGCGuideAddBookActivity1, UGCGuideAddBookActivity$SearchPromptAdapter SearchPromptAdapter2)
    {
        b = UGCGuideAddBookActivity1;
        a = SearchPromptAdapter2;
    }

    private UGCGuideAddBookActivity$SearchPromptAdapter a;
    private UGCGuideAddBookActivity b;

    public final void a()
    {
        Object Object2;

        UGCGuideAddBookActivity.a( b, true );
        Object2 = String.valueOf( Calendar.getInstance().getTimeInMillis() );
        a.getFilter().filter( (CharSequence) Object2 );
    }
}
