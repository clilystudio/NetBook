
package com.clilystudio.netbook.reader;

import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;
import android.webkit.WebView;

final class de implements View$OnKeyListener {

    de(WebPageFragment WebPageFragment1)
    {
        a = WebPageFragment1;
    }

    private WebPageFragment a;

    public final boolean onKey(View View1, int int2, KeyEvent KeyEvent3)
    {
        if( int2 != 4 || !com.clilystudio.netbook.reader.WebPageFragment.d( a ).canGoBack() )
            return false;
        WebPageFragment.d( a ).goBack();
        return true;
    }
}
