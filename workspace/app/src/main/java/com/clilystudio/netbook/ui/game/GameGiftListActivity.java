
package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGift;
import com.clilystudio.netbook.model.GameGiftRoot;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.GameGiftGetButton;
import java.io.Serializable;
import java.util.Date;

public class GameGiftListActivity extends BaseActivity {

    private y a;
    private Account b;
    private GameGift c;
    private TextView e;
    private View f;
    private com.clilystudio.netbook.view.a g;
    private boolean h;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, GameGiftRoot GameGiftRoot2, boolean boolean3)
    {
    }

    static View a(GameGiftListActivity GameGiftListActivity1, View View2)
    {
        GameGiftListActivity1.f = View2;
        return View2;
    }

    static TextView a(GameGiftListActivity GameGiftListActivity1, TextView TextView2)
    {
        GameGiftListActivity1.e = TextView2;
        return TextView2;
    }

    static GameGift a(GameGiftListActivity GameGiftListActivity1, GameGift GameGift2)
    {
        GameGiftListActivity1.c = GameGift2;
        return GameGift2;
    }

    static void a(GameGiftListActivity GameGiftListActivity1)
    {
        if( GameGiftListActivity1.b == null )
            GameGiftListActivity1.b = am.a( (Activity) GameGiftListActivity1 );
        else
        {
            D D2 = new D( GameGiftListActivity1, (Activity) GameGiftListActivity1 );
            String[] String_1darray3 = new String[2];

            String_1darray3[0] = GameGiftListActivity1.c._id;
            String_1darray3[1] = GameGiftListActivity1.b.getToken();
            D2.b( String_1darray3 );
        }
    }

    static void a(GameGiftListActivity GameGiftListActivity1, String String2)
    {
        GameGiftListActivity1.a( String2 );
    }

    private void a(String String1)
    {
        com.clilystudio.netbook.view.a a2 = new com.clilystudio.netbook.view.a( (Context) this );
        View View3 = View.inflate( (Context) this, 2130903192, null );
        TextView TextView4;
        Button Button5;

        ((TextView) View3.findViewById( 2131493395 )).setText( (CharSequence) c.title );
        TextView4 = (TextView) View3.findViewById( 2131493397 );
        ((TextView) View3.findViewById( 2131493399 )).setText( (CharSequence) c.description );
        ((TextView) View3.findViewById( 2131493401 )).setText( (CharSequence) c.usage );
        ((TextView) View3.findViewById( 2131493400 )).setText( (CharSequence) new StringBuilder().append( t.b( c.rangeFrom ) ).append( " - " ).append( t.b( c.rangeTo ) ).toString() );
        a2.a( View3 ).show();
        Button5 = (Button) View3.findViewById( 2131493402 );
        if( String1 == null )
        {
            Button5.setText( (CharSequence) "\u9886\u53D6" );
            TextView4.setText( (CharSequence) new StringBuilder( "\u5DF2\u6709 " ).append( c.total - c.left ).append( " \u4EBA\u9886\u53D6\uFF0C\u5269\u4F59 " ).append( c.left ).append( " \u4E2A" ).toString() );
            Button5.setBackgroundResource( 2130837746 );
            Button5.setOnClickListener( (View$OnClickListener) new w( this, a2 ) );
        }
        else
        {
            TextView4.setText( (CharSequence) new StringBuilder( "\u5151\u6362\u7801\uFF1A" ).append( String1 ).toString() );
            Button5.setText( (CharSequence) "\u590D\u5236\u5151\u6362\u7801\u5E76\u6253\u5F00\u6E38\u620F" );
            Button5.setBackgroundResource( 2130837749 );
            Button5.setOnClickListener( (View$OnClickListener) new x( this, a2, String1 ) );
        }
    }

    static boolean b(GameGiftListActivity GameGiftListActivity1)
    {
        return GameGiftListActivity1.h;
    }

    static GameGift c(GameGiftListActivity GameGiftListActivity1)
    {
        return GameGiftListActivity1.c;
    }

    static Account d(GameGiftListActivity GameGiftListActivity1)
    {
        return GameGiftListActivity1.b;
    }

    static TextView e(GameGiftListActivity GameGiftListActivity1)
    {
        return GameGiftListActivity1.e;
    }

    static View f(GameGiftListActivity GameGiftListActivity1)
    {
        return GameGiftListActivity1.f;
    }

    public final void b()
    {
        if( h || com.clilystudio.netbook.hpay100.a.a.j( (Context) this, c.game.getAndroidPackageName() ) )
        {
            try
            {
                if( g != null )
                    g.dismiss();
            }
            catch( Exception Exception1 )
            {
                Exception1.printStackTrace();
            }
            a( null );
        }
        else
        {
            Game Game2 = c.game;
            View View3 = View.inflate( (Context) this, 2130903191, null );
            GameGiftGetButton GameGiftGetButton4;

            ((SmartImageView) View3.findViewById( 2131493394 )).setImageUrl( Game2.getIcon() );
            ((TextView) View3.findViewById( 2131493397 )).setText( (CharSequence) new StringBuilder( "\u5269\u4F59\u793C\u5305" ).append( c.left ).append( "\u4E2A" ).toString() );
            ((TextView) View3.findViewById( 2131493395 )).setText( (CharSequence) c.title );
            ((TextView) View3.findViewById( 2131493396 )).setText( (CharSequence) new StringBuilder().append( Game2.getCat() ).append( " | " ).append( com.clilystudio.netbook.hpay100.a.a.c( Game2.getAndroidSize() ) ).toString() );
            GameGiftGetButton4 = (GameGiftGetButton) View3.findViewById( 2131493398 );
            s.a( (Activity) this, Game2 );
            GameGiftGetButton4.setGame( Game2 );
            GameGiftGetButton4.a( Game2.getDownloadStatus() );
            g = new com.clilystudio.netbook.view.a( (Context) this );
            g.a( View3 ).show();
        }
    }

    protected void onCreate(Bundle Bundle1)
    {
        String String2;
        ListView ListView3;
        GameGiftRoot GameGiftRoot4;

        super.onCreate( Bundle1 );
        setContentView( 2130903321 );
        String2 = getIntent().getStringExtra( "title" );
        h = getIntent().getBooleanExtra( "is_micro_game", false );
        if( String2 != null )
            b( String2 );
        else
            b( "\u5F80\u671F\u6E38\u620F" );
        ListView3 = (ListView) findViewById( 2131493135 );
        ListView3.setDividerHeight( 0 );
        a = new y( this, getLayoutInflater() );
        ListView3.setAdapter( (ListAdapter) a );
        b = am.e();
        GameGiftRoot4 = (GameGiftRoot) getIntent().getSerializableExtra( "game_gift_list" );
        if( GameGiftRoot4 != null )
        {
            GameGift[] GameGift_1darray5 = GameGiftRoot4.gifts;

            a.a( GameGift_1darray5 );
        }
    }
}
