
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.view.View$OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.HotKeywordResult;
import com.clilystudio.netbook.widget.AutoFlowView;
import com.clilystudio.netbook.widget.AutoFlowView$Word;
import com.clilystudio.netbook.widget.i;
import java.util.ArrayList;
import java.util.List;

final class bM extends com.clilystudio.netbook.a.e {

    bM(SearchActivity SearchActivity1, byte byte2)
    {
        this( SearchActivity1 );
    }

    final SearchActivity a = null;

    private bM(SearchActivity SearchActivity1)
    {
        a = SearchActivity1;
    }

    private transient HotKeywordResult a()
    {
        HotKeywordResult HotKeywordResult2;

        try
        {
            HotKeywordResult2 = c().b();
        }
        catch( Throwable Throwable1 )
        {
            Throwable1.printStackTrace();
            return null;
        }
        return HotKeywordResult2;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        HotKeywordResult HotKeywordResult2 = (HotKeywordResult) Object1;

        if( HotKeywordResult2 != null )
        {
            Object Object3 = new ArrayList();
            String[] String_1darray4 = HotKeywordResult2.getHotWords();
            int int5 = String_1darray4.length;
            int int6;

            for( int6 = 0; int6 < int5; ++int6 )
            {
                String String7 = String_1darray4[int6];
                Object Object8 = new AutoFlowView$Word();

                ((AutoFlowView$Word) Object8).show = 0;
                ((AutoFlowView$Word) Object8).content = String7;
                ((List) Object3).add( Object8 );
            }
            com.clilystudio.netbook.hpay100.a.a.a( Object3, com.clilystudio.netbook.c.e, "search_hotword.txt" );
            SearchActivity.g( a ).setVisibility( 0 );
            SearchActivity.e( a ).setWords( HotKeywordResult2.getHotWords() );
            SearchActivity.e( a ).setOnItemClickListener( (i) new bN( this ) );
            SearchActivity.h( a ).setOnClickListener( (View$OnClickListener) new bO( this ) );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u7F51\u7EDC\u4E0D\u7ED9\u529B\uFF01" );
    }
}
