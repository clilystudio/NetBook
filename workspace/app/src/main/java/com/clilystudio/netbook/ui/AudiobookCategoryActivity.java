
package com.clilystudio.netbook.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.design.widget.am;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup$LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TableRow$LayoutParams;
import android.widget.TextView;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.util.as;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.tag.Tag;
import com.ximalaya.ting.android.opensdk.model.tag.TagList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import uk.me.lewisdeane.ldialogs.h;

public class AudiobookCategoryActivity extends BaseActivity {

    private CommonRequest a;
    private View b;
    private View c;
    private View e;
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
                e.setVisibility( 0 );
                b.setVisibility( 8 );
                c.setVisibility( 8 );
                return;
            case 0:
                e.setVisibility( 8 );
                b.setVisibility( 0 );
                c.setVisibility( 8 );
                return;
            case 2:
                e.setVisibility( 8 );
                b.setVisibility( 8 );
                c.setVisibility( 0 );
                return;
        }
    }

    static void a(AudiobookCategoryActivity AudiobookCategoryActivity1)
    {
        AudiobookCategoryActivity1.b();
    }

    static void a(AudiobookCategoryActivity AudiobookCategoryActivity1, int int2)
    {
        AudiobookCategoryActivity1.a( int2 );
    }

    static void a(AudiobookCategoryActivity AudiobookCategoryActivity1, TagList TagList2)
    {
        List List3 = TagList2.getTagList();

        if( List3.size() != 0 )
        {
            int int4 = AudiobookCategoryActivity1.getResources().getDisplayMetrics().widthPixels / 3;
            int int5 = com.clilystudio.netbook.hpay100.a.a.a( (Context) AudiobookCategoryActivity1, 56.0F );
            TableLayout TableLayout6 = (TableLayout) AudiobookCategoryActivity1.findViewById( 2131493079 );
            Object Object7 = new TableRow$LayoutParams( -1, -2 );
            int int8 = am.b( (Context) AudiobookCategoryActivity1, 2130771969 );
            int int9;
            Object Object10;
            int int11;
            int int12;

            for( int9 = 0; int9 < List3.size(); ++int9 )
            {
                String String16 = ((Tag) List3.get( int9 )).getTagName();

                if( String16.equals( "QQ\u9605\u8BFB" ) || String16.equals( "\u901F\u64AD\u4E13\u533A" ) || String16.equals( "\u63A8\u7406\u4E16\u754C" ) )
                {
                    List3.remove( int9 );
                    --int9;
                }
            }
            Object10 = null;
            int11 = 0;
            for( int12 = 0; int12 < List3.size(); ++int12 )
            {
                Tag Tag13 = (Tag) List3.get( int12 );
                Object Object14;
                Object Object15;

                if( int12 % 3 == 0 )
                {
                    Object10 = new TableRow( (Context) AudiobookCategoryActivity1 );
                    TableLayout6.addView( (View) Object10, (ViewGroup$LayoutParams) Object7 );
                    ++int11;
                }
                Object14 = new TableRow$LayoutParams( int4, int5 );
                if( int11 == 1 )
                {
                    if( int12 % 3 == 1 )
                        ((TableRow$LayoutParams) Object14).setMargins( -1, 0, -1, 0 );
                    else
                        ((TableRow$LayoutParams) Object14).setMargins( 0, 0, 0, 0 );
                }
                else if( int12 % 3 == 1 )
                    ((TableRow$LayoutParams) Object14).setMargins( -1, -1, -1, 0 );
                else
                    ((TableRow$LayoutParams) Object14).setMargins( 0, -1, 0, 0 );
                Object15 = new TextView( (Context) AudiobookCategoryActivity1 );
                ((TextView) Object15).setText( (CharSequence) Tag13.getTagName() );
                ((TextView) Object15).setGravity( 17 );
                ((TextView) Object15).setTextAppearance( (Context) AudiobookCategoryActivity1, 2131165621 );
                ((TextView) Object15).setBackgroundResource( int8 );
                ((TextView) Object15).setOnClickListener( (View$OnClickListener) new v( AudiobookCategoryActivity1, Tag13 ) );
                ((TableRow) Object10).addView( (View) Object15, (ViewGroup$LayoutParams) Object14 );
            }
        }
    }

    private void b()
    {
        Object Object1;

        a( 0 );
        Object1 = new HashMap();
        ((Map) Object1).put( "category_id", "3" );
        ((Map) Object1).put( "type", "0" );
        CommonRequest.getTags( (Map) Object1, (IDataCallBack) new u( this ) );
    }

    static void b(AudiobookCategoryActivity AudiobookCategoryActivity1)
    {
        h h2 = new h( (Context) AudiobookCategoryActivity1 ).a( true );

        h2.e = "\u662F\u5426\u6253\u5F00\u559C\u9A6C\u62C9\u96C5FM\u4E0B\u8F7D\u9875";
        h2.b( "\u53D6\u6D88", (DialogInterface$OnClickListener) new t( AudiobookCategoryActivity1 ) ).a( "\u786E\u5B9A", (DialogInterface$OnClickListener) new s( AudiobookCategoryActivity1 ) ).b();
    }

    protected void onCreate(Bundle Bundle1)
    {
        TextView TextView3;
        Object Object4;

        super.onCreate( Bundle1 );
        setContentView( 2130903080 );
        b( getResources().getString( 2131034314 ) );
        as.a();
        a = as.b();
        e = findViewById( 2131493078 );
        b = findViewById( 2131493081 );
        c = findViewById( 2131493082 );
        c.setOnClickListener( (View$OnClickListener) new q( this ) );
        b();
        ((RelativeLayout) findViewById( 2131493083 )).setBackgroundResource( am.b( (Context) this, 2130771970 ) );
        TextView3 = (TextView) findViewById( 2131493084 );
        Object4 = new SpannableString( (CharSequence) getResources().getString( 2131034591 ) );
        ((SpannableString) Object4).setSpan( new ForegroundColorSpan( getResources().getColor( 2131427543 ) ), 0, 5, 33 );
        ((SpannableString) Object4).setSpan( new ForegroundColorSpan( getResources().getColor( 2131427340 ) ), 5, 11, 33 );
        ((SpannableString) Object4).setSpan( new ForegroundColorSpan( getResources().getColor( 2131427543 ) ), 11, 13, 33 );
        TextView3.setText( (CharSequence) Object4 );
        TextView3.setOnClickListener( (View$OnClickListener) new r( this ) );
    }
}
