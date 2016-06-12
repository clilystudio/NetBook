
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.clilystudio.netbook.util.as;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import java.util.List;

public final class n extends BaseAdapter {

    public n(AudioBookPlayActivity AudioBookPlayActivity1, Context Context2)
    {
        a = AudioBookPlayActivity1;
        b = LayoutInflater.from( Context2 );
    }

    AudioBookPlayActivity a;     // final access specifier removed
    private LayoutInflater b;

    public final int getCount()
    {
        return AudioBookPlayActivity.i( a ).size();
    }

    public final Object getItem(int int1)
    {
        return AudioBookPlayActivity.i( a ).get( int1 );
    }

    public final long getItemId(int int1)
    {
        return (long) int1;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3)
    {
        Object Object4;
        Track Track5;

        if( View2 == null )
        {
            Object4 = new p( a );
            View2 = b.inflate( 2130903150, null );
            ((p) Object4).a = (TextView) View2.findViewById( 2131493297 );
            ((p) Object4).b = (TextView) View2.findViewById( 2131493299 );
            ((p) Object4).c = (ImageView) View2.findViewById( 2131493298 );
            View2.setTag( Object4 );
        }
        else
            Object4 = (p) View2.getTag();
        Track5 = (Track) AudioBookPlayActivity.i( a ).get( int1 );
        ((p) Object4).a.setText( (CharSequence) String.valueOf( int1 + 1 ) );
        ((p) Object4).b.setText( (CharSequence) Track5.getTrackTitle() );
        if( int1 != AudioBookPlayActivity.k( a ) )
            ((p) Object4).c.setImageResource( 2130837589 );
        else if( as.c() )
        {
            ((p) Object4).c.setImageResource( 2130837602 );
            ((AnimationDrawable) ((p) Object4).c.getDrawable()).start();
        }
        else
            ((p) Object4).c.setImageResource( 2130837603 );
        View2.setOnClickListener( (View$OnClickListener) new o( this, int1 ) );
        return View2;
    }
}
