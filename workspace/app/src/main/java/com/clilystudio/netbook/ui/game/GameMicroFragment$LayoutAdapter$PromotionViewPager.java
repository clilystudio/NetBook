
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.support.v7.widget.ay;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnTouchListener;
import android.view.ViewGroup$LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import butterknife.ButterKnife;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.SmartImageView;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

public class GameMicroFragment$LayoutAdapter$PromotionViewPager extends ay {

    public GameMicroFragment$LayoutAdapter$PromotionViewPager(GameMicroFragment$LayoutAdapter LayoutAdapter1, View View2)
    {
        super( View2 );
        int int6;
        int int5;
        Game[] Game_1darray4;
        Object Object3;

        k = LayoutAdapter1;
        j = (Handler) new ag( this );
        ButterKnife.inject( this, View2 );
        i = new ArrayList();
        l = new ArrayList();
        Object3 = new LinearLayout$LayoutParams( -2, -2 );
        ((LinearLayout$LayoutParams) Object3).setMargins( 20, 20, 20, 20 );
        Game_1darray4 = GameMicroFragment.a( LayoutAdapter1.a );
        int5 = Game_1darray4.length;
        for( int6 = 0; int6 < int5; ++int6 )
        {
            Game Game7 = Game_1darray4[int6];
            Object Object8 = new SmartImageView( (Context) LayoutAdapter1.a.getActivity() );
            Object Object10;
            int int11;

            ((SmartImageView) Object8).setLayoutParams( (ViewGroup$LayoutParams) Object3 );
            ((SmartImageView) Object8).setImageUrl( Game7.getBanner() );
            ((SmartImageView) Object8).setScaleType( ImageView$ScaleType.FIT_XY );
            ((SmartImageView) Object8).setOnClickListener( (View$OnClickListener) new ac( this, LayoutAdapter1, Game7.get_id() ) );
            i.add( Object8 );
            Object10 = new ImageView( (Context) LayoutAdapter1.a.getActivity() );
            if( l.size() == 0 )
                int11 = 2130837927;
            else
                int11 = 2130837926;
            ((ImageView) Object10).setImageResource( int11 );
            l.add( Object10 );
            mViewDots.addView( (View) Object10, (ViewGroup$LayoutParams) Object3 );
        }
    }

    ArrayList i;
    Handler j;
    GameMicroFragment$LayoutAdapter k;     // final access specifier removed
    private ArrayList l;
    LinearLayout mViewDots;
    ViewPager mViewPager;

    private static void a(ImageView ImageView1, boolean boolean2)
    {
        if( boolean2 )
            ImageView1.setImageResource( 2130837927 );
        else
            ImageView1.setImageResource( 2130837926 );
    }

    static void a(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1)
    {
        PromotionViewPager1.s();
    }

    static void a(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1, int int2)
    {
        int int3;

        for( int3 = 0; int3 < PromotionViewPager1.l.size(); ++int3 )
        {
            if( int3 == int2 )
                a( (ImageView) PromotionViewPager1.l.get( int3 ), true );
            else
                a( (ImageView) PromotionViewPager1.l.get( int3 ), false );
        }
    }

    static void b(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1)
    {
        PromotionViewPager1.r();
    }

    private void r()
    {
        if( k.a.a == null )
            k.a.a = new Timer();
        s();
        k.a.b = (TimerTask) new af( this );
        k.a.a.schedule( k.a.b, 5000L, 5000L );
    }

    private void s()
    {
        if( k.a.b != null )
        {
            k.a.b.cancel();
            k.a.b = null;
        }
    }

    public final void q()
    {
        mViewPager.setAdapter( (PagerAdapter) new ah( this ) );
        mViewPager.addOnPageChangeListener( (ViewPager$OnPageChangeListener) new ad( this ) );
        mViewPager.setOnTouchListener( (View$OnTouchListener) new ae( this ) );
        mViewPager.setCurrentItem( k.a.c );
        r();
    }
}
