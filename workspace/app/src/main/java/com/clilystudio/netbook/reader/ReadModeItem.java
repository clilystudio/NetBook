
package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;

public class ReadModeItem extends FrameLayout {

    public ReadModeItem(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    private Activity a;
    private String b;
    private String c;
    TextView mChapter;
    TextView mFlagSelect;
    TextView mFlagWeb;
    ImageView mIcon;
    TextView mName;

    public ReadModeItem(Activity Activity1, int int2, int int3, int int4, int int5, String String6, String String7)
    {
        super( (Context) Activity1 );
        a = Activity1;
        b = String6;
        c = String7;
        LayoutInflater.from( (Context) a ).inflate( 2130903288, (ViewGroup) this );
        ButterKnife.inject( (View) this );
        mIcon.setImageResource( int2 );
        mName.setText( int3 );
        if( int4 == int5 )
        {
            mFlagSelect.setVisibility( 0 );
            mFlagSelect.setText( (CharSequence) "\u5F53\u524D\u9009\u62E9" );
        }
        if( com.clilystudio.netbook.hpay100.a.a.f( int4 ) )
            mFlagWeb.setVisibility( 0 );
        mChapter.setVisibility( 8 );
        setOnClickListener( (View$OnClickListener) new O( this, int5, int4 ) );
    }

    static String a(ReadModeItem ReadModeItem1)
    {
        return ReadModeItem1.b;
    }

    private static void a()
    {
        i.a().c( new v( 1 ) );
    }

    static void a(ReadModeItem ReadModeItem1, int int2)
    {
        switch( int2 )
        {
            case 3:
            default:
                Intent Intent4;

                a();
                Intent4 = ReaderActivity.a( (Context) ReadModeItem1.a, ReadModeItem1.b, ReadModeItem1.c, "MIX_TOC_ID", null, false );
                ReadModeItem1.a.startActivity( Intent4 );
                ReadModeItem1.a.finish();
                return;
            case 2:
            case 0:
            case 4:
            case 1:
                Intent Intent3;

                a();
                Intent3 = ReaderResActivity.a( (Context) ReadModeItem1.a, ReadModeItem1.b, ReadModeItem1.c, int2 );
                ReadModeItem1.a.startActivity( Intent3 );
                ReadModeItem1.a.finish();
                return;
        }
    }

    static Activity b(ReadModeItem ReadModeItem1)
    {
        return ReadModeItem1.a;
    }
}
