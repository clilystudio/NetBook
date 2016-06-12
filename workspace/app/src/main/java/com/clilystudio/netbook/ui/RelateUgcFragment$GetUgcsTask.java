
package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.RecommendUgcRoot;
import com.clilystudio.netbook.model.RecommendUgcRoot$RecommendUGC;
import com.clilystudio.netbook.widget.CoverView;

public final class RelateUgcFragment$GetUgcsTask extends e {

    public RelateUgcFragment$GetUgcsTask(RelateUgcFragment RelateUgcFragment1)
    {
        a = RelateUgcFragment1;
        b = "\u5171%1$d\u672C\u4E66  |  %2$d\u4EBA\u6536\u85CF";
    }

    RelateUgcFragment a;     // final access specifier removed
    private String b;

    private static transient RecommendUgcRoot a(String[] String_1darray1)
    {
        RecommendUgcRoot RecommendUgcRoot4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            RecommendUgcRoot4 = com.clilystudio.netbook.api.b.b().i( String_1darray1[0], 3 );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return RecommendUgcRoot4;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (RecommendUgcRoot) Object1;

        super.onPostExecute( Object2 );
        if( a.getActivity() != null && Object2 != null && ((RecommendUgcRoot) Object2).getBooklists() != null && ((RecommendUgcRoot) Object2).getBooklists().length > 0 )
        {
            RecommendUgcRoot$RecommendUGC[] RecommendUGC_1darray3;
            int int4;
            int int5;

            a.mRelateUgcRoot.setVisibility( 0 );
            RecommendUGC_1darray3 = ((RecommendUgcRoot) Object2).getBooklists();
            int4 = RecommendUGC_1darray3.length;
            for( int5 = 0; int5 < int4; ++int5 )
            {
                RecommendUgcRoot$RecommendUGC RecommendUGC6 = RecommendUGC_1darray3[int5];
                View View7 = a.getLayoutInflater( null ).inflate( 2130903317, (ViewGroup) a.mUgcContainer, false );
                RelateUgcFragment$GetUgcsTask$ViewHolder ViewHolder8 = new RelateUgcFragment$GetUgcsTask$ViewHolder( this, View7 );
                TextView TextView9;
                String String10;
                Object[] Object_1darray11;

                ViewHolder8.mCover.setImageUrl( RecommendUGC6.getFullCover(), 2130837766 );
                ViewHolder8.mTitle.setText( (CharSequence) RecommendUGC6.getTitle() );
                TextView9 = ViewHolder8.mCount;
                String10 = b;
                Object_1darray11 = new Object[2];
                Object_1darray11[0] = Integer.valueOf( RecommendUGC6.getBookCount() );
                Object_1darray11[1] = Integer.valueOf( RecommendUGC6.getCollectorCount() );
                TextView9.setText( (CharSequence) String.format( String10, Object_1darray11 ) );
                ViewHolder8.mAuthor.setText( (CharSequence) RecommendUGC6.getAuthor() );
                ViewHolder8.mDesc.setText( (CharSequence) RecommendUGC6.getDesc() );
                ViewHolder8.mContainer.setOnClickListener( (View$OnClickListener) new bC( this, RecommendUGC6 ) );
                a.mUgcContainer.addView( View7 );
            }
        }
    }
}
