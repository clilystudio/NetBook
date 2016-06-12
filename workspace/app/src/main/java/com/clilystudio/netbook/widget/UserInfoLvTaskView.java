
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.clilystudio.netbook.R$styleable;

public class UserInfoLvTaskView extends UserInfoTaskView {

    public UserInfoLvTaskView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        TypedArray TypedArray3;

        TypedArray3 = Context1.obtainStyledAttributes( AttributeSet2, R$styleable.UserInfoLvTaskView );
        a = TypedArray3.getBoolean( 0, false );
        b = TypedArray3.getInteger( 1, 1 );
        TypedArray3.recycle();
    }

    private boolean a;     // final access specifier removed
    private int b;     // final access specifier removed

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        if( a )
        {
            ExpView ExpView1;

            mExp.setText( (CharSequence) "\u7B49\u7EA7N" );
            ExpView1 = mExp;
            ExpView1.setBackgroundResource( 2130837783 );
            ExpView1.setTextColor( ExpView1.getResources().getColor( 2131427546 ) );
        }
        else
        {
            setLv( b );
            mExp.a();
        }
    }

    public void setLv(int int1)
    {
        mExp.setText( (CharSequence) new StringBuilder( "\u7B49\u7EA7" ).append( int1 ).toString() );
    }
}
