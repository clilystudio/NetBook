
package com.clilystudio.netbook.reader.txt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.W;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class R extends W implements AdapterView$OnItemClickListener {

    public R(ScanTxtFileActivity ScanTxtFileActivity1, LayoutInflater LayoutInflater2)
    {
        super( LayoutInflater2, 2130903266 );
        a = ScanTxtFileActivity1;
    }

    private ScanTxtFileActivity a;

    private static void a(ImageView ImageView1, boolean boolean2)
    {
        if( boolean2 )
        {
            ImageView1.setImageResource( 2130837820 );
            ImageView1.setContentDescription( (CharSequence) "\u9009\u4E2D" );
        }
        else
        {
            ImageView1.setImageResource( 2130837818 );
            ImageView1.setContentDescription( (CharSequence) "\u672A\u9009\u4E2D" );
        }
    }

    static void a(R R1)
    {
        Iterator Iterator2 = R1.c().iterator();
        ScanTxtFileActivity ScanTxtFileActivity3;
        boolean boolean4;
        TextView TextView6;
        Object Object7;

        while( Iterator2.hasNext() )
            ((T) Iterator2.next()).a( ScanTxtFileActivity.c( R1.a ) );
        ScanTxtFileActivity3 = R1.a;
        if( !com.clilystudio.netbook.reader.txt.ScanTxtFileActivity.c( R1.a ) )
            boolean4 = true;
        else
            boolean4 = false;
        ScanTxtFileActivity.a( ScanTxtFileActivity3, boolean4 );
        TextView6 = (TextView) ((BaseActivity) R1.a).a().a().findViewById( 2131493008 );
        if( ScanTxtFileActivity.c( R1.a ) )
            Object7 = "\u5168\u9009";
        else
            Object7 = "\u5168\u4E0D\u9009";
        TextView6.setText( (CharSequence) Object7 );
        R1.notifyDataSetChanged();
    }

    static void a(R R1, ImageView ImageView2, boolean boolean3)
    {
        a( ImageView2, boolean3 );
    }

    static List b(R R1)
    {
        Object Object2 = new ArrayList();
        Iterator Iterator3 = R1.c().iterator();

        while( Iterator3.hasNext() )
        {
            T T4 = (T) Iterator3.next();

            if( !T4.b() )
                continue;
            ((ArrayList) Object2).add( T4.a() );
        }
        return (List) Object2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    protected final void a(int int1, Object Object2)
    {
    }

    protected final int[] a()
    {
        return new int[] { 2131492936, 2131493040, 2131493625 };
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        ((T) c().get( int3 )).c();
        ScanTxtFileActivity.a( a ).notifyDataSetChanged();
    }
}
