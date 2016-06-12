
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.os.Bundle;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.e;
import java.io.Serializable;

public class UserLevelActivity extends BaseActivity {

    TextView mCurrentLevel;
    Button mDoTask;
    TextView mLevelProgress;
    TextView mLevelRank;

    public void onCreate(Bundle Bundle1)
    {
        UserInfo UserInfo2;
        int int3;
        int int4;
        int int5;
        float float6;
        TextView TextView7;
        StringBuilder StringBuilder8;
        Object[] Object_1darray9;

        super.onCreate( Bundle1 );
        setContentView( 2130903142 );
        ButterKnife.inject( (Activity) this );
        b( "\u7ECF\u9A8C\u7B49\u7EA7" );
        UserInfo2 = (UserInfo) MyApplication.a().b( "savedObject_userinfo" );
        int3 = UserInfo2.getLv();
        int4 = UserInfo2.getExp();
        int5 = e.a( int3 );
        mCurrentLevel.setText( (CharSequence) new StringBuilder().append( int3 ).append( "\u7EA7" ).toString() );
        mLevelProgress.setText( (CharSequence) new StringBuilder().append( int4 ).append( "/" ).append( int5 ).toString() );
        float6 = UserInfo2.getRank();
        TextView7 = mLevelRank;
        StringBuilder8 = new StringBuilder( "\u8D85\u8FC7" );
        Object_1darray9 = new Object[1];
        Object_1darray9[0] = Float.valueOf( float6 * 100.0F );
        TextView7.setText( (CharSequence) StringBuilder8.append( String.format( "%.2f", Object_1darray9 ) ).append( "%\u7684\u8FFD\u4E66\u7528\u6237" ).toString() );
        mDoTask.setOnClickListener( (View$OnClickListener) new aL( this ) );
    }
}
