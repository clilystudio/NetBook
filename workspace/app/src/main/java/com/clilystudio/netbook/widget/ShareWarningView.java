
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.ButterKnife;

public class ShareWarningView extends RelativeLayout {

    public ShareWarningView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        setPadding( 0, 0, 0, com.clilystudio.netbook.hpay100.a.a.a( Context1, 22.0F ) );
        setBackgroundColor( -1 );
        LayoutInflater.from( Context1 ).inflate( 2130903393, (ViewGroup) this );
        ButterKnife.inject( (View) this );
        mNegative.setOnClickListener( b );
        mClose.setOnClickListener( b );
    }

    private aB a;
    ImageView mClose;
    TextView mContent;
    Button mNegative;
    Button mPositive;
    private View$OnClickListener b = new aA( this );

    static aB a(ShareWarningView ShareWarningView1)
    {
        return ShareWarningView1.a;
    }

    public void setContentText(String String1)
    {
        mContent.setText( (CharSequence) String1 );
    }

    public void setOnCloseListener(aB aB1)
    {
        a = aB1;
    }

    public void setPositiveListener(View$OnClickListener OnClickListener1)
    {
        mPositive.setOnClickListener( OnClickListener1 );
    }
}
