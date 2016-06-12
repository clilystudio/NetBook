
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TabHost;
import android.widget.TabHost$OnTabChangeListener;
import android.widget.TabHost$TabContentFactory;
import android.widget.TabHost$TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.ui.BaseTabActivity;
import java.util.ArrayList;
import java.util.List;

public class GameTabActivity extends BaseTabActivity implements ViewPager$OnPageChangeListener, TabHost$OnTabChangeListener, TabHost$TabContentFactory {

    private ViewPager e;
    private an f;
    private final String[] b = { "recommend", "rank", "category", "micro" };
    private List c = new ArrayList();
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1)
    {
    }

    static List a(GameTabActivity GameTabActivity1)
    {
        return GameTabActivity1.c;
    }

    static ViewPager b(GameTabActivity GameTabActivity1)
    {
        return GameTabActivity1.e;
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
        LayoutInflater LayoutInflater2;
        int int3;
        int int4;

        super.onCreate( Bundle1 );
        setContentView( 2130903103 );
        b( 2131034214 );
        a = (TabHost) findViewById( 2131493096 );
        e = (ViewPager) findViewById( 2131493097 );
        f = new an( this, getSupportFragmentManager() );
        e.setOffscreenPageLimit( 4 );
        e.setAdapter( (PagerAdapter) f );
        e.setOnPageChangeListener( this );
        a.setup();
        a.setOnTabChangedListener( this );
        if( a.getTabWidget().getTabCount() > 0 )
        {
            a.setCurrentTab( 0 );
            a.clearAllTabs();
        }
        LayoutInflater2 = getLayoutInflater();
        int3 = f.getCount();
        for( int4 = 0; int4 < int3; ++int4 )
        {
            TabHost$TabSpec TabSpec5 = a.newTabSpec( new StringBuilder( "tab" ).append( int4 ).toString() );
            View View7;

            TabSpec5.setContent( this );
            View7 = LayoutInflater2.inflate( 2130903229, null );
            ((TextView) View7.findViewById( 2131493509 )).setText( (CharSequence) (String) f.getPageTitle( int4 ) );
            TabSpec5.setIndicator( View7 );
            a.addTab( TabSpec5 );
        }
        a.setCurrentTab( 0 );
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
        com.clilystudio.netbook.umeng.a.b.a( (Context) this, "game_center_tab_click", b[int1] );
    }

    public void onTabChanged(String String1)
    {
        int int2 = a.getCurrentTab();

        if( int2 >= 0 && int2 < f.getCount() )
            e.setCurrentItem( int2, true );
    }
}
