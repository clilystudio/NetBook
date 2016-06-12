
package com.clilystudio.netbook.ui;

import android.content.res.Resources;
import android.view.MenuItem;
import android.widget.TextView;
import com.clilystudio.netbook.widget.LinearListView;

final class E implements android.support.v7.widget.m {

    E(AudiobookInfoActivity AudiobookInfoActivity1)
    {
        a = AudiobookInfoActivity1;
    }

    private AudiobookInfoActivity a;

    public final boolean a(MenuItem MenuItem1)
    {
        switch( MenuItem1.getItemId() )
        {
            case 1193:
                if( !com.clilystudio.netbook.ui.AudiobookInfoActivity.f( a ) )
                {
                    AudiobookInfoActivity.e( a, true );
                    AudiobookInfoActivity.h( a ).a( AudiobookInfoActivity.f( a ) );
                    AudiobookInfoActivity.o( a ).setText( (CharSequence) a.getResources().getString( 2131034311 ) );
                    AudiobookInfoActivity.c( a, 1 + (AudiobookInfoActivity.j( a ) - AudiobookInfoActivity.m( a )) );
                    if( AudiobookInfoActivity.p( a ) )
                    {
                        AudiobookInfoActivity.h( a ).a( AudiobookInfoActivity.m( a ), AudiobookInfoActivity.l( a ) );
                        return true;
                    }
                    break;
                }
                break;
            case 1194:
                if( AudiobookInfoActivity.f( a ) )
                {
                    AudiobookInfoActivity.e( a, false );
                    AudiobookInfoActivity.h( a ).a( AudiobookInfoActivity.f( a ) );
                    AudiobookInfoActivity.o( a ).setText( (CharSequence) a.getResources().getString( 2131034312 ) );
                    AudiobookInfoActivity.c( a, 1 + (AudiobookInfoActivity.j( a ) - AudiobookInfoActivity.m( a )) );
                    if( AudiobookInfoActivity.p( a ) )
                    {
                        AudiobookInfoActivity.h( a ).a( AudiobookInfoActivity.m( a ), AudiobookInfoActivity.l( a ) );
                        return true;
                    }
                    break;
                }
                break;
            default:
                break;
        }
        return true;
    }
}
