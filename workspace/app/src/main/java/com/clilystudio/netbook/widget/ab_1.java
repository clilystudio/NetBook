
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.HotCommentRoot;
import com.clilystudio.netbook.model.PostComment;

final class ab extends e {

    ab(HotCommentView HotCommentView1, byte byte2)
    {
        this( HotCommentView1 );
    }

    private HotCommentView a;

    private ab(HotCommentView HotCommentView1)
    {
        a = HotCommentView1;
    }

    private static transient HotCommentRoot a(String[] String_1darray1)
    {
        HotCommentRoot HotCommentRoot4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            HotCommentRoot4 = com.clilystudio.netbook.api.b.b().T( String_1darray1[0] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return HotCommentRoot4;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (HotCommentRoot) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((HotCommentRoot) Object2).getComments() != null && ((HotCommentRoot) Object2).getComments().length > 0 )
        {
            LayoutInflater LayoutInflater3;
            PostComment[] PostComment_1darray4;
            int int5;
            int int6;

            a.findViewById( 2131493517 ).setVisibility( 0 );
            a.findViewById( 2131493518 ).setVisibility( 0 );
            LayoutInflater3 = LayoutInflater.from( a.getContext() );
            PostComment_1darray4 = ((HotCommentRoot) Object2).getComments();
            int5 = 0;
            int6 = 2;
            while( int5 < PostComment_1darray4.length )
            {
                PostComment PostComment7 = PostComment_1darray4[int5];
                View View8 = LayoutInflater3.inflate( 2130903312, (ViewGroup) a, false );

                ((CommentItemView) View8.findViewById( 2131493758 )).b( PostComment7, -1 );
                a.addView( View8, int6 );
                ++int6;
                ++int5;
            }
        }
    }
}
