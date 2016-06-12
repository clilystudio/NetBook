
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.am;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup$LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TableRow$LayoutParams;
import android.widget.TextView;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.CategoryLevelRoot;
import com.clilystudio.netbook.model.CategoryRoot;
import com.clilystudio.netbook.model.CategoryRoot$Category;

public class BookCategoryActivity extends BaseActivity {

    private View a;
    private View b;
    private View c;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1)
    {
    }

    private void a(int int1)
    {
        switch( int1 )
        {
            default:
                return;
            case 1:
                c.setVisibility( 0 );
                a.setVisibility( 8 );
                b.setVisibility( 8 );
                return;
            case 0:
                c.setVisibility( 8 );
                a.setVisibility( 0 );
                b.setVisibility( 8 );
                return;
            case 2:
                c.setVisibility( 8 );
                a.setVisibility( 8 );
                b.setVisibility( 0 );
                return;
        }
    }

    private void a(int int1, int int2, CategoryRoot$Category[] Category_1darray3, boolean boolean4)
    {
        int int5 = 0;
        Object Object6 = null;
        Object Object7 = new TableRow$LayoutParams( -1, -2 );
        Object Object8 = new LinearLayout$LayoutParams( -1, -2 );
        int int9 = am.b( (Context) this, 2130771969 );
        int int10 = 0;

        while( int10 < Category_1darray3.length )
        {
            CategoryRoot$Category Category11 = Category_1darray3[int10];
            Object Object12 = Category11.getName();
            int int13 = Category11.getBookCount();
            TableLayout TableLayout14;
            Object Object15;
            int int16;
            Object Object17;
            Object Object18;
            Object Object19;
            Object Object20;

            if( boolean4 )
                TableLayout14 = (TableLayout) findViewById( 2131493094 );
            else
                TableLayout14 = (TableLayout) findViewById( 2131493095 );
            if( int10 % 3 == 0 )
            {
                Object15 = new TableRow( (Context) this );
                TableLayout14.addView( (View) Object15, (ViewGroup$LayoutParams) Object7 );
                int16 = int5 + 1;
            }
            else
            {
                Object15 = Object6;
                int16 = int5;
            }
            Object17 = new TableRow$LayoutParams( int1, int2 );
            if( int16 == 1 )
            {
                if( int10 % 3 == 1 )
                    ((TableRow$LayoutParams) Object17).setMargins( -1, 0, -1, 0 );
                else
                    ((TableRow$LayoutParams) Object17).setMargins( 0, 0, 0, 0 );
            }
            else if( int10 % 3 == 1 )
                ((TableRow$LayoutParams) Object17).setMargins( -1, -1, -1, 0 );
            else
                ((TableRow$LayoutParams) Object17).setMargins( 0, -1, 0, 0 );
            Object18 = new LinearLayout( (Context) this );
            ((LinearLayout) Object18).setOrientation( 1 );
            ((LinearLayout) Object18).setGravity( 17 );
            ((LinearLayout) Object18).setBackgroundResource( int9 );
            ((LinearLayout) Object18).setOnClickListener( (View$OnClickListener) new aj( this, boolean4, (String) Object12 ) );
            Object19 = new TextView( (Context) this );
            ((TextView) Object19).setText( (CharSequence) Object12 );
            ((TextView) Object19).setGravity( 1 );
            ((TextView) Object19).setTextAppearance( (Context) this, 2131165621 );
            ((LinearLayout) Object18).addView( (View) Object19, (ViewGroup$LayoutParams) Object8 );
            Object20 = new TextView( (Context) this );
            ((TextView) Object20).setText( (CharSequence) new StringBuilder().append( int13 ).append( " \u672C" ).toString() );
            ((TextView) Object20).setGravity( 1 );
            ((TextView) Object20).setTextAppearance( (Context) this, 2131165622 );
            ((LinearLayout) Object18).addView( (View) Object20, (ViewGroup$LayoutParams) Object8 );
            ((TableRow) Object15).addView( (View) Object18, (ViewGroup$LayoutParams) Object17 );
            ++int10;
            int5 = int16;
            Object6 = Object15;
        }
    }

    static void a(BookCategoryActivity BookCategoryActivity1)
    {
        BookCategoryActivity1.b();
    }

    static void a(BookCategoryActivity BookCategoryActivity1, int int2)
    {
        BookCategoryActivity1.a( int2 );
    }

    static void a(BookCategoryActivity BookCategoryActivity1, CategoryLevelRoot CategoryLevelRoot2)
    {
        com.clilystudio.netbook.hpay100.a.a.a( CategoryLevelRoot2, com.clilystudio.netbook.c.f, "category_level.txt" );
    }

    static void a(BookCategoryActivity BookCategoryActivity1, CategoryRoot CategoryRoot2)
    {
        CategoryRoot$Category[] Category_1darray3 = CategoryRoot2.getMale();
        CategoryRoot$Category[] Category_1darray4 = CategoryRoot2.getFemale();

        if( Category_1darray3 != null && Category_1darray4 != null )
        {
            int int5 = BookCategoryActivity1.getResources().getDisplayMetrics().widthPixels / 3;
            int int6 = com.clilystudio.netbook.hpay100.a.a.a( (Context) BookCategoryActivity1, 56.0F );

            BookCategoryActivity1.a( int5, int6, Category_1darray3, true );
            BookCategoryActivity1.a( int5, int6, Category_1darray4, false );
        }
    }

    private void b()
    {
        a( 0 );
        new al( this, (byte) 0 ).b( new String[0] );
        new ak( this, (byte) 0 ).b( new String[0] );
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setContentView( 2130903084 );
        b( 2131034335 );
        c = findViewById( 2131493078 );
        a = findViewById( 2131493081 );
        b = findViewById( 2131493082 );
        b.setOnClickListener( (View$OnClickListener) new ai( this ) );
        b();
    }
}
