
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import android.widget.TextView;
import com.nostra13.universalimageloader.core.f;
import com.clilystudio.netbook.ui.SmartImageView;

public class UserInfoPortraitView extends RelativeLayout {

    public UserInfoPortraitView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    private TextView c;
    private SmartImageView d;
    private ProgressView e;
    private final float a = getResources().getDisplayMetrics().density;
    private final float b = 80.0F * a;

    static SmartImageView a(UserInfoPortraitView UserInfoPortraitView1)
    {
        return UserInfoPortraitView1.d;
    }

    protected void onFinishInflate()
    {
        Object Object1;
        Object Object2;
        Object Object3;
        float float4;
        Object Object5;
        Object Object6;

        super.onFinishInflate();
        Object1 = new RelativeLayout$LayoutParams( (int) b, (int) b );
        Object2 = new RelativeLayout( getContext() );
        ((RelativeLayout) Object2).setLayoutParams( (ViewGroup$LayoutParams) Object1 );
        Object3 = new RelativeLayout$LayoutParams( (int) b, (int) b );
        e = new ProgressView( getContext() );
        e.setLayoutParams( (ViewGroup$LayoutParams) Object3 );
        ((RelativeLayout) Object2).addView( (View) e );
        d = new SmartImageView( getContext() );
        float4 = b - 11.0F * a;
        Object5 = new RelativeLayout$LayoutParams( (int) float4, (int) float4 );
        ((RelativeLayout$LayoutParams) Object5).addRule( 13 );
        d.setLayoutParams( (ViewGroup$LayoutParams) Object5 );
        ((RelativeLayout) Object2).addView( (View) d );
        addView( (View) Object2 );
        c = new TextView( getContext() );
        c.setBackgroundResource( 2130837697 );
        c.setTextSize( 12.0F );
        c.setGravity( 17 );
        c.setTextColor( getResources().getColor( 17170443 ) );
        Object6 = new RelativeLayout$LayoutParams( -2, -2 );
        ((RelativeLayout$LayoutParams) Object6).addRule( 14 );
        ((RelativeLayout$LayoutParams) Object6).addRule( 12 );
        ((RelativeLayout$LayoutParams) Object6).setMargins( 0, 0, 0, (int) (4.0F * a) );
        c.setLayoutParams( (ViewGroup$LayoutParams) Object6 );
        addView( (View) c );
    }

    public void setAvatar(String String1)
    {
        f.a().a( String1, (com.nostra13.universalimageloader.core.d.a) new aD( this ) );
    }

    public void setExp(int int1)
    {
        e.setMax( 100 );
        e.setProgress( (float) int1 );
    }

    public void setLv(int int1)
    {
        c.setText( (CharSequence) new StringBuilder( "lv." ).append( int1 ).toString() );
    }
}
