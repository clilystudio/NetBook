
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.widget.EditText;

public class SearchEditText extends EditText {

    public SearchEditText(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        a();
    }

    private boolean a;
    private ax b;

    public SearchEditText(Context Context1)
    {
        super( Context1 );
        a();
    }

    private void a()
    {
        addTextChangedListener( (TextWatcher) new aw( this ) );
    }

    static boolean a(SearchEditText SearchEditText1)
    {
        return SearchEditText1.a;
    }

    static boolean a(SearchEditText SearchEditText1, boolean boolean2)
    {
        SearchEditText1.a = false;
        return false;
    }

    static ax b(SearchEditText SearchEditText1)
    {
        return SearchEditText1.b;
    }

    public void setOnUserInputListener(ax ax1)
    {
        b = ax1;
    }

    public void setTextByCode(String String1)
    {
        if( String1 != null )
        {
            a = true;
            setText( (CharSequence) String1 );
            setSelection( String1.length() );
        }
    }
}
