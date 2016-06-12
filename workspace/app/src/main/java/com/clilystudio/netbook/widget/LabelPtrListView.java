
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

public class LabelPtrListView extends HeaderPtrListView {

    public LabelPtrListView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        View View4;
        Object Object3;

        Object3 = (ListView) h();
        View4 = LayoutInflater.from( Context1 ).inflate( 2130903330, (ViewGroup) Object3, false );
        c = (TextView) View4.findViewById( 2131492905 );
        c.setVisibility( 8 );
        ((ListView) Object3).addHeaderView( View4, null, false );
        invalidate();
    }

    private TextView c;

    public void setCountText(String String1, int int2)
    {
        TextView TextView3 = c;
        Object[] Object_1darray4 = new Object[1];

        Object_1darray4[0] = Integer.valueOf( int2 );
        TextView3.setText( (CharSequence) String.format( String1, Object_1darray4 ) );
        if( int2 == 0 )
            c.setVisibility( 8 );
        else
            c.setVisibility( 0 );
    }
}
