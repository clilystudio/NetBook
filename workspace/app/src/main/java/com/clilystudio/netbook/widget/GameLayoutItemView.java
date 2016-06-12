
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.maxthon.main.InitActivity;
import com.clilystudio.netbook.umeng.a.b;
import com.clilystudio.netbook.model.Game;

public class GameLayoutItemView extends LinearLayout {

    public GameLayoutItemView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    GameDownloadButton mAction;
    GameImageView mImage;
    TextView mSubTitle;
    TextView mTitle;
// Error: Internal #201: 
// The following method may not be correct.

    static void a(GameLayoutItemView GameLayoutItemView1, Context Context2, Game Game3)
    {
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        setOrientation( 1 );
        LayoutInflater.from( getContext() ).inflate( 2130903421, (ViewGroup) this );
        ButterKnife.inject( (View) this );
    }
}
