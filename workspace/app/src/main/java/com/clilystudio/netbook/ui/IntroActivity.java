
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup$LayoutParams;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import java.util.ArrayList;

public class IntroActivity extends Activity implements ViewPager$OnPageChangeListener, View$OnClickListener {

    private ViewPager a;
    private bc b;
    private Button c;
    private Button d;
    private ArrayList e;
    private ImageView[] g;
    private int h;
    private static final int[] f = { 2130837667, 2130837668 };
    private boolean i = false;

    static ArrayList a(IntroActivity IntroActivity1)
    {
        return IntroActivity1.e;
    }

    private void a()
    {
        Object Object1 = new LinearLayout$LayoutParams( -1, -1 );
        int int2;

        for( int2 = 0; int2 < 2; ++int2 )
        {
            Object Object3 = new ImageView( (Context) this );

            ((ImageView) Object3).setLayoutParams( (ViewGroup$LayoutParams) Object1 );
            ((ImageView) Object3).setImageResource( f[int2] );
            ((ImageView) Object3).setScaleType( ImageView$ScaleType.FIT_XY );
            e.add( Object3 );
        }
        a.setAdapter( (PagerAdapter) b );
        a.addOnPageChangeListener( this );
        b();
    }

    private static void a(ImageView ImageView1, boolean boolean2)
    {
        if( boolean2 )
            ImageView1.setImageResource( 2130837927 );
        else
            ImageView1.setImageResource( 2130837926 );
    }

    private void b()
    {
        LinearLayout LinearLayout1 = (LinearLayout) findViewById( 2131493997 );
        int int2;

        g = new ImageView[2];
        for( int2 = 0; int2 < 2; ++int2 )
        {
            g[int2] = (ImageView) LinearLayout1.getChildAt( int2 );
            a( g[int2], false );
            g[int2].setTag( Integer.valueOf( int2 ) );
        }
        h = 0;
        a( g[h], true );
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void c()
    {
    }

    public void onClick(View View1)
    {
        switch( View1.getId() )
        {
            default:
                return;
            case 1137:
                startActivity( AuthLoginActivity.a( (Context) this ) );
                com.clilystudio.netbook.umeng.a.b.a( (Context) this, "intro_quick_login" );
                return;
            case 1138:
                c();
                com.clilystudio.netbook.umeng.a.b.a( (Context) this, "intro_entry_app" );
                return;
        }
    }

    protected void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setContentView( 2130903398 );
        e = new ArrayList();
        a = (ViewPager) findViewById( 2131493996 );
        b = new bc( this );
        c = (Button) findViewById( 2131494001 );
        c.setOnClickListener( this );
        d = (Button) findViewById( 2131494002 );
        d.setOnClickListener( this );
        a();
        com.clilystudio.netbook.umeng.a.b.a( (Context) this, "intro_show_count" );
    }

    public void onPageScrollStateChanged(int int1)
    {
    }

    public void onPageScrolled(int int1, float float2, int int3)
    {
    }

    public void onPageSelected(int int1)
    {
        if( int1 >= 0 && int1 <= 1 && h != int1 )
        {
            a( g[int1], true );
            a( g[h], false );
            h = int1;
            if( h == 0 )
            {
                d.setTextColor( getResources().getColor( 2131427440 ) );
                c.setTextColor( getResources().getColor( 2131427440 ) );
            }
            else
            {
                d.setTextColor( getResources().getColor( 2131427441 ) );
                c.setTextColor( getResources().getColor( 2131427441 ) );
            }
        }
    }

    protected void onResume()
    {
        super.onResume();
        if( i )
            c();
    }

    protected void onStop()
    {
        super.onStop();
        i = true;
    }
}
