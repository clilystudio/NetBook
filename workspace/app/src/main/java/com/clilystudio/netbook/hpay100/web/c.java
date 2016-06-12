
package com.clilystudio.netbook.hpay100.web;

import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

final class c implements m {

    c(HPayWebActivity HPayWebActivity1)
    {
        a = HPayWebActivity1;
    }

    private HPayWebActivity a;

    public final void a(int int1, Object Object2)
    {
        switch( int1 )
        {
            case 0:
                HPayWebActivity.a( a ).setVisibility( 0 );
                return;
            case 4:
                if( Object2 != null )
                {
                    HPayWebActivity.b( a ).setText( (CharSequence) (String) Object2 );
                    return;
                }
                break;
            case 6:
                HPayWebActivity.a( a ).setVisibility( 8 );
                return;
            case 5:
                if( Object2 != null )
                {
                    int int3 = ((Integer) Object2).intValue();

                    if( int3 == 100 )
                        HPayWebActivity.c( a ).setVisibility( 4 );
                    else
                    {
                        if( HPayWebActivity.c( a ).getVisibility() == 4 )
                            HPayWebActivity.c( a ).setVisibility( 0 );
                        HPayWebActivity.c( a ).setProgress( int3 );
                    }
                    return;
                }
                break;
            case 1:
            case 2:
            case 3:
            default:
                break;
        }
    }
}
