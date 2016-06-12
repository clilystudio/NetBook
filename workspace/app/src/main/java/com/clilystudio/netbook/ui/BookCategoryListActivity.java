
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow$OnDismissListener;
import android.widget.TabHost;
import android.widget.TabHost$OnTabChangeListener;
import android.widget.TabHost$TabContentFactory;
import android.widget.TabHost$TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import com.clilystudio.netbook.model.CategoryLevelRoot;
import com.clilystudio.netbook.model.CategoryLevelRoot$CategoryLevel;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class BookCategoryListActivity extends BaseTabActivity implements ViewPager$OnPageChangeListener, TabHost$OnTabChangeListener, TabHost$TabContentFactory {

    private boolean b;
    private String c;
    private String e;
    private PopupWindow f;
    private aw g;
    private boolean h;
    private String[] i;
    private ViewPager k;
    private av l;
    private List j = new ArrayList();
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, boolean boolean2, String String3)
    {
    }

    static void a(BookCategoryListActivity BookCategoryListActivity1)
    {
        if( BookCategoryListActivity1.f != null && BookCategoryListActivity1.f.isShowing() )
            BookCategoryListActivity1.i();
        else
        {
            if( BookCategoryListActivity1.f != null && !BookCategoryListActivity1.f.isShowing() )
            {
                Object Object2 = (TextView) ((BaseActivity) BookCategoryListActivity1).a().a().findViewById( 2131493008 );

                BookCategoryListActivity1.f.showAsDropDown( (View) Object2 );
            }
            com.clilystudio.netbook.umeng.a.b.a( (Context) BookCategoryListActivity1, "book_category_filter_click" );
            BookCategoryListActivity1.e( "\u6536\u8D77" );
        }
    }

    static void a(BookCategoryListActivity BookCategoryListActivity1, String String2)
    {
        if( !BookCategoryListActivity1.e.equals( String2 ) )
        {
            String String3;

            BookCategoryListActivity1.e = String2;
            BookCategoryListActivity1.d( String2 );
            BookCategoryListActivity1.g.notifyDataSetChanged();
            ((BookCategoryFragment) BookCategoryListActivity1.j.get( BookCategoryListActivity1.k.getCurrentItem() )).a();
            ((BookCategoryFragment) BookCategoryListActivity1.j.get( BookCategoryListActivity1.k.getCurrentItem() )).b( BookCategoryListActivity1.g() );
            if( BookCategoryListActivity1.b )
                String3 = "\u7537\u751F - ";
            else
                String3 = "\u5973\u751F - ";
            if( String2.equals( BookCategoryListActivity1.c ) )
                com.clilystudio.netbook.hpay100.a.a.p( (Context) BookCategoryListActivity1, new StringBuilder().append( String3 ).append( String2 ).toString() );
            else
                com.clilystudio.netbook.umeng.a.b.a( (Context) BookCategoryListActivity1, "book_category_minor_click", new StringBuilder().append( String3 ).append( BookCategoryListActivity1.c ).append( " - " ).append( String2 ).toString() );
        }
        BookCategoryListActivity1.i();
    }

    private String[] a(CategoryLevelRoot CategoryLevelRoot1)
    {
        CategoryLevelRoot$CategoryLevel[] CategoryLevel_1darray2;
        int int3;
        int int4;

        if( b )
            CategoryLevel_1darray2 = CategoryLevelRoot1.getMale();
        else
            CategoryLevel_1darray2 = CategoryLevelRoot1.getFemale();
        int3 = CategoryLevel_1darray2.length;
        int4 = 0;
        while( int4 < int3 )
        {
            CategoryLevelRoot$CategoryLevel CategoryLevel5 = CategoryLevel_1darray2[int4];

            if( CategoryLevel5.getMajor().equals( c ) )
                return CategoryLevel5.getMins();
            else
                ++int4;
        }
        return new String[0];
    }

    static List b(BookCategoryListActivity BookCategoryListActivity1)
    {
        return BookCategoryListActivity1.j;
    }

    static ViewPager c(BookCategoryListActivity BookCategoryListActivity1)
    {
        return BookCategoryListActivity1.k;
    }

    static String[] d(BookCategoryListActivity BookCategoryListActivity1)
    {
        return BookCategoryListActivity1.i;
    }

    static void e(BookCategoryListActivity BookCategoryListActivity1)
    {
        BookCategoryListActivity1.i();
    }

    static String f(BookCategoryListActivity BookCategoryListActivity1)
    {
        return BookCategoryListActivity1.e;
    }

    private void h()
    {
        LayoutInflater LayoutInflater1;
        int int2;
        int int3;

        if( a.getTabWidget().getTabCount() > 0 )
        {
            a.setCurrentTab( 0 );
            a.clearAllTabs();
        }
        LayoutInflater1 = getLayoutInflater();
        int2 = l.getCount();
        for( int3 = 0; int3 < int2; ++int3 )
        {
            TabHost$TabSpec TabSpec4 = a.newTabSpec( new StringBuilder( "tab" ).append( int3 ).toString() );
            View View6;

            TabSpec4.setContent( this );
            View6 = LayoutInflater1.inflate( 2130903229, null );
            ((TextView) View6.findViewById( 2131493509 )).setText( (CharSequence) (String) l.getPageTitle( int3 ) );
            TabSpec4.setIndicator( View6 );
            a.addTab( TabSpec4 );
        }
    }

    private void i()
    {
        if( f != null && f.isShowing() )
            f.dismiss();
        e( "\u7B5B\u9009" );
    }

    public final BookCategoryFragment a(String String1)
    {
        BookCategoryFragment BookCategoryFragment2 = (BookCategoryFragment) getSupportFragmentManager().findFragmentByTag( String1 );

        if( BookCategoryFragment2 == null )
            BookCategoryFragment2 = BookCategoryFragment.a( String1 );
        return BookCategoryFragment2;
    }

    public final String b()
    {
        if( b )
            return "male";
        else
            return "female";
    }

    public View createTabContent(String String1)
    {
        View View2 = new View( (Context) this );

        View2.setMinimumHeight( 0 );
        View2.setMinimumWidth( 0 );
        return View2;
    }

    public final String f()
    {
        return c;
    }

    public final String g()
    {
        if( e.equals( c ) )
            return "";
        else
            return e;
    }

    public void onCreate(Bundle Bundle1)
    {
        View View2;
        PopupWindow PopupWindow3;
        String[] String_1darray4;
        CategoryLevelRoot CategoryLevelRoot5;
        String[] String_1darray6;
        String[] String_1darray7;
        int int8;
        int int9;
        boolean boolean10;
        ListView ListView11;

        super.onCreate( Bundle1 );
        setContentView( 2130903085 );
        b = getIntent().getBooleanExtra( "CATEGORY_GENDER", false );
        c = getIntent().getStringExtra( "CATEGORY_KEY" );
        e = c;
        i = getResources().getStringArray( 2131361793 );
        View2 = LayoutInflater.from( (Context) this ).inflate( 2130903175, null );
        PopupWindow3 = new PopupWindow( View2, -1, -1 );
        PopupWindow3.setFocusable( true );
        PopupWindow3.setBackgroundDrawable( (Drawable) new ColorDrawable( 0 ) );
        PopupWindow3.setOutsideTouchable( true );
        PopupWindow3.setOnDismissListener( (PopupWindow$OnDismissListener) new au( this ) );
        f = PopupWindow3;
        String_1darray4 = new String[0];
        CategoryLevelRoot5 = (CategoryLevelRoot) com.clilystudio.netbook.hpay100.a.a.k( com.clilystudio.netbook.c.f, "category_level.txt" );
        if( CategoryLevelRoot5 != null )
            String_1darray6 = a( CategoryLevelRoot5 );
        else
            String_1darray6 = String_1darray4;
        String_1darray7 = new String[1 + String_1darray6.length];
        String_1darray7[0] = c;
        for( int8 = 0; int8 < String_1darray6.length; ++int8 )
            String_1darray7[int8 + 1] = String_1darray6[int8];
        int9 = String_1darray7.length;
        boolean10 = false;
        if( int9 == 1 )
            boolean10 = true;
        h = boolean10;
        View2.findViewById( 2131493373 ).setOnClickListener( (View$OnClickListener) new as( this ) );
        ListView11 = (ListView) View2.findViewById( 2131493374 );
        g = new aw( this, (Context) this, String_1darray7 );
        ListView11.setAdapter( (ListAdapter) g );
        ListView11.setOnItemClickListener( (AdapterView$OnItemClickListener) new at( this, String_1darray7 ) );
        if( h )
            b( c );
        else
            a( c, "\u7B5B\u9009", (aa) new ar( this ) );
        a = (TabHost) findViewById( 2131493096 );
        k = (ViewPager) findViewById( 2131493097 );
        l = new av( this, getSupportFragmentManager() );
        k.setOffscreenPageLimit( 4 );
        k.setAdapter( (PagerAdapter) l );
        k.setOnPageChangeListener( this );
        a.setup();
        a.setOnTabChangedListener( this );
        h();
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

    public void onPause()
    {
        super.onPause();
        if( !h )
            i();
    }

    public void onTabChanged(String String1)
    {
        int int2 = a.getCurrentTab();

        if( int2 >= 0 && int2 < l.getCount() )
        {
            k.setCurrentItem( int2, true );
            com.clilystudio.netbook.umeng.a.b.a( (Context) this, "book_category_tab_click", i[int2] );
        }
    }
}
