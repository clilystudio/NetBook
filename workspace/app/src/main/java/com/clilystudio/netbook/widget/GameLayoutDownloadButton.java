
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

public class GameLayoutDownloadButton extends NewGameDownloadButton {

    public GameLayoutDownloadButton(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    protected final void c()
    {
        setText( (CharSequence) "\u5B89\u88C5" );
        setTextColor( -1 );
        setBackgroundResource( 2130837730 );
    }
}
