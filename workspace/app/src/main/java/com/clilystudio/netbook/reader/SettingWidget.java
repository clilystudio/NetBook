
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;

public class SettingWidget extends LinearLayout {

    public SettingWidget(Context Context1, AttributeSet AttributeSet2, int int3)
    {
        super( Context1, AttributeSet2, int3 );
    }

    private bZ a;
    private ReaderActionBar b;
    private View c;
    private View d;
    private CheckBox e;
    private ImageView f;
    private ImageView g;
    private ImageView h;

    public SettingWidget(Context Context1)
    {
        super( Context1 );
    }

    public SettingWidget(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    static void a(SettingWidget SettingWidget1)
    {
        SettingWidget1.b();
    }

    static bZ b(SettingWidget SettingWidget1)
    {
        return SettingWidget1.a;
    }

    private void b()
    {
        switch( a.c() )
        {
            default:
                d.setEnabled( true );
                c.setEnabled( true );
                return;
            case 0:
                d.setEnabled( false );
                c.setEnabled( true );
                return;
            case 5:
                d.setEnabled( true );
                c.setEnabled( false );
                return;
        }
    }

    static CheckBox c(SettingWidget SettingWidget1)
    {
        return SettingWidget1.e;
    }

    static ImageView d(SettingWidget SettingWidget1)
    {
        return SettingWidget1.f;
    }

    static ImageView e(SettingWidget SettingWidget1)
    {
        return SettingWidget1.g;
    }

    static ImageView f(SettingWidget SettingWidget1)
    {
        return SettingWidget1.h;
    }

    static ReaderActionBar g(SettingWidget SettingWidget1)
    {
        return SettingWidget1.b;
    }

    public final void a()
    {
        if( getVisibility() != 0 )
            setVisibility( 0 );
        else
            setVisibility( 8 );
    }

    public final void a(db db1)
    {
        findViewById( 2131493957 ).setOnClickListener( (View$OnClickListener) new da( this, db1 ) );
    }

    public final void a(dc dc1)
    {
        View View2 = findViewById( 2131493952 );

        if( View2 != null )
            View2.setOnClickListener( (View$OnClickListener) new cS( this, dc1 ) );
    }

    public boolean onTouchEvent(MotionEvent MotionEvent1)
    {
        return true;
    }

    public void setReadOptionEnable(boolean boolean1)
    {
        View View2 = findViewById( 2131493952 );

        c.setEnabled( boolean1 );
        d.setEnabled( boolean1 );
        View2.setEnabled( boolean1 );
    }

    public void setReaderStyle(bZ bZ1)
    {
        SeekBar SeekBar2;
        int int3;

        a = bZ1;
        bZ1.a( (cc) new cR( this ) );
        c = findViewById( 2131493951 );
        d = findViewById( 2131493950 );
        c.setOnClickListener( (View$OnClickListener) new cT( this ) );
        d.setOnClickListener( (View$OnClickListener) new cU( this ) );
        b();
        e = (CheckBox) findViewById( 2131493949 );
        SeekBar2 = (SeekBar) findViewById( 2131493948 );
        SeekBar2.setProgress( a.f() );
        e.setChecked( a.g() );
        SeekBar2.setOnSeekBarChangeListener( (SeekBar$OnSeekBarChangeListener) new cV( this ) );
        e.setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) new cW( this ) );
        f = (ImageView) findViewById( 2131493954 );
        g = (ImageView) findViewById( 2131493955 );
        h = (ImageView) findViewById( 2131493956 );
        int3 = a.j();
        if( int3 == 1 )
            f.setSelected( true );
        else if( int3 == 2 )
            g.setSelected( true );
        else if( int3 == 3 )
            h.setSelected( true );
        f.setOnClickListener( (View$OnClickListener) new cX( this ) );
        g.setOnClickListener( (View$OnClickListener) new cY( this ) );
        h.setOnClickListener( (View$OnClickListener) new cZ( this ) );
    }

    public void setReaderStyle(bZ bZ1, ReaderActionBar ReaderActionBar2)
    {
        b = ReaderActionBar2;
        setReaderStyle( bZ1 );
    }
}
