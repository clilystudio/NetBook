
package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

final class cu extends AccessibilityDelegateCompat {

    cu(ReaderViewPager ReaderViewPager1)
    {
        a = ReaderViewPager1;
    }

    private ReaderViewPager a;
// Error: Internal #201: 
// The following method may not be correct.

    public final void onInitializeAccessibilityEvent(View View1, AccessibilityEvent AccessibilityEvent2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void onInitializeAccessibilityNodeInfo(View View1, AccessibilityNodeInfoCompat AccessibilityNodeInfoCompat2)
    {
    }

    public final boolean performAccessibilityAction(View View1, int int2, Bundle Bundle3)
    {
        if( super.performAccessibilityAction( View1, int2, Bundle3 ) )
            return true;
        else
        {
            switch( int2 )
            {
                default:
                    return false;
                case 4096:
                    if( ReaderViewPager.a( a ) == null || ReaderViewPager.b( a ) < 0 || ReaderViewPager.b( a ) >= -1 + ReaderViewPager.a( a ).getCount() )
                        return false;
                    a.a( 1 + ReaderViewPager.b( a ) );
                    return true;
                case 8192:
                    if( ReaderViewPager.a( a ) == null || ReaderViewPager.b( a ) <= 0 || ReaderViewPager.b( a ) >= ReaderViewPager.a( a ).getCount() )
                        return false;
                    a.a( -1 + ReaderViewPager.b( a ) );
                    return true;
            }
        }
    }
}
