
package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.am;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TabHost$OnTabChangeListener;
import android.widget.TabHost$TabContentFactory;
import android.widget.TabHost$TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseTabActivity;
import java.util.ArrayList;
import java.util.List;

public class TweetTabActivity extends BaseTabActivity implements ViewPager$OnPageChangeListener, TabHost$OnTabChangeListener, TabHost$TabContentFactory {

    private ViewPager c;
    private dV e;
    private RelativeLayout f;
    private RelativeLayout g;
    private LinearLayout h;
    private LinearLayout i;
    private FloatingActionButton j;
    private FloatingActionButton k;
    private FloatingActionButton l;
    private FloatingActionButton m;
    private View n;
    private List b = new ArrayList();
    private boolean o = false;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1)
    {
    }

    static List a(TweetTabActivity TweetTabActivity1)
    {
        return TweetTabActivity1.b;
    }

    static boolean a(TweetTabActivity TweetTabActivity1, boolean boolean2)
    {
        TweetTabActivity1.o = boolean2;
        return boolean2;
    }

    static ViewPager b(TweetTabActivity TweetTabActivity1)
    {
        return TweetTabActivity1.c;
    }

    private void b()
    {
        f.setOnClickListener( (View$OnClickListener) new dT( this ) );
    }

    static boolean c(TweetTabActivity TweetTabActivity1)
    {
        return TweetTabActivity1.o;
    }

    static void d(TweetTabActivity TweetTabActivity1)
    {
        TweetTabActivity1.f();
    }

    static FloatingActionButton e(TweetTabActivity TweetTabActivity1)
    {
        return TweetTabActivity1.j;
    }

    private void f()
    {
        int int1 = com.clilystudio.netbook.hpay100.a.a.a( (Context) this, 18.0F );
        int int2 = com.clilystudio.netbook.hpay100.a.a.a( (Context) this, 36.0F );

        f.setVisibility( 4 );
        n.setVisibility( 4 );
        com.c.b.a.a( (View) i ).c( 0.0F ).b( (float) int1 ).a( 150L ).a( (Interpolator) new DecelerateInterpolator() ).a();
        com.c.b.a.a( (View) h ).c( 0.0F ).b( (float) int2 ).a( 150L ).a( (Interpolator) new DecelerateInterpolator() ).b( 100L ).a();
        com.c.b.a.a( (View) j ).a( 0.0F ).a( 150L ).a( (Interpolator) new AccelerateDecelerateInterpolator() ).a();
        new Handler().postDelayed( (Runnable) new dU( this ), 150L );
    }

    static void f(TweetTabActivity TweetTabActivity1)
    {
        int int2 = com.clilystudio.netbook.hpay100.a.a.a( (Context) TweetTabActivity1, 18.0F );
        int int3 = com.clilystudio.netbook.hpay100.a.a.a( (Context) TweetTabActivity1, 36.0F );

        TweetTabActivity1.f.setVisibility( 0 );
        TweetTabActivity1.n.setVisibility( 0 );
        TweetTabActivity1.i.setVisibility( 0 );
        TweetTabActivity1.h.setVisibility( 0 );
        com.c.b.a.a( (View) TweetTabActivity1.i ).c( 1.0F ).b( (float) -int2 ).a( 150L ).a( (Interpolator) new DecelerateInterpolator() ).b( 35L ).a();
        com.c.b.a.a( (View) TweetTabActivity1.h ).c( 1.0F ).b( (float) -int3 ).a( 150L ).a( (Interpolator) new DecelerateInterpolator() ).a();
        com.c.b.a.a( (View) TweetTabActivity1.j ).a( 135.0F ).a( 150L ).a( (Interpolator) new AccelerateDecelerateInterpolator() ).a();
    }

    static void g(TweetTabActivity TweetTabActivity1)
    {
        TweetTabActivity1.b();
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void h(TweetTabActivity TweetTabActivity1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void i(TweetTabActivity TweetTabActivity1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void j(TweetTabActivity TweetTabActivity1)
    {
    }

    static LinearLayout k(TweetTabActivity TweetTabActivity1)
    {
        return TweetTabActivity1.i;
    }

    static LinearLayout l(TweetTabActivity TweetTabActivity1)
    {
        return TweetTabActivity1.h;
    }

    public View createTabContent(String String1)
    {
        View View2 = new View( (Context) this );

        View2.setMinimumHeight( 0 );
        View2.setMinimumWidth( 0 );
        return View2;
    }

    protected void onCreate(Bundle Bundle1)
    {
        LayoutInflater LayoutInflater4;
        int int5;
        int int6;

        super.onCreate( Bundle1 );
        setContentView( 2130903134 );
        b( 2131034546 );
        n = a().a().findViewById( 2131493017 );
        f = (RelativeLayout) findViewById( 2131493222 );
        g = (RelativeLayout) findViewById( 2131493223 );
        findViewById( 2131493579 );
        h = (LinearLayout) findViewById( 2131493583 );
        findViewById( 2131493585 );
        i = (LinearLayout) findViewById( 2131493581 );
        j = (FloatingActionButton) findViewById( 2131493580 );
        k = (FloatingActionButton) findViewById( 2131493584 );
        l = (FloatingActionButton) findViewById( 2131493586 );
        m = (FloatingActionButton) findViewById( 2131493582 );
        j.setOnClickListener( (View$OnClickListener) new dP( this ) );
        m.setOnClickListener( (View$OnClickListener) new dQ( this ) );
        k.setOnClickListener( (View$OnClickListener) new dR( this ) );
        l.setOnClickListener( (View$OnClickListener) new dS( this ) );
        b();
        f();
        a = (TabHost) findViewById( 2131493096 );
        c = (ViewPager) findViewById( 2131493097 );
        e = new dV( this, getSupportFragmentManager() );
        c.setOffscreenPageLimit( 3 );
        c.setAdapter( (PagerAdapter) e );
        c.addOnPageChangeListener( this );
        a.setup();
        a.setOnTabChangedListener( this );
        if( a.getTabWidget().getTabCount() > 0 )
        {
            a.setCurrentTab( 0 );
            a.clearAllTabs();
        }
        LayoutInflater4 = getLayoutInflater();
        int5 = e.getCount();
        for( int6 = 0; int6 < int5; ++int6 )
        {
            TabHost$TabSpec TabSpec7 = a.newTabSpec( new StringBuilder( "tab" ).append( int6 ).toString() );
            View View9;

            TabSpec7.setContent( this );
            View9 = LayoutInflater4.inflate( 2130903229, null );
            ((TextView) View9.findViewById( 2131493509 )).setText( (CharSequence) (String) e.getPageTitle( int6 ) );
            TabSpec7.setIndicator( View9 );
            a.addTab( TabSpec7 );
        }
        if( am.e() == null )
            a.setCurrentTab( 1 );
    }

    protected void onNewIntent(Intent Intent1)
    {
        super.onNewIntent( Intent1 );
    }

    public void onPageScrollStateChanged(int int1)
    {
    }

    public void onPageScrolled(int int1, float float2, int int3)
    {
        a( int1, int3 );
    }

    public void onPageSelected(int int1)
    {
        TabWidget TabWidget2 = a.getTabWidget();
        int int3 = TabWidget2.getDescendantFocusability();

        TabWidget2.setDescendantFocusability( 393216 );
        a.setCurrentTab( int1 );
        TabWidget2.setDescendantFocusability( int3 );
    }

    public void onTabChanged(String String1)
    {
        int int2 = a.getCurrentTab();

        if( int2 >= 0 && int2 < e.getCount() )
            c.setCurrentItem( int2, true );
        if( int2 != 0 )
            g.setVisibility( 4 );
        else
            g.setVisibility( 0 );
    }
}
