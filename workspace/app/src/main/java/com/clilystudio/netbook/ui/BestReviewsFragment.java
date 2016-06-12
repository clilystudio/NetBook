
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.ReviewHelpful;
import com.clilystudio.netbook.widget.RatingView;

public class BestReviewsFragment extends Fragment {

    private View a;
    private LinearLayout b;
    private boolean c = false;

    static View a(BestReviewsFragment BestReviewsFragment1)
    {
        return BestReviewsFragment1.a;
    }

    public static BestReviewsFragment a(String String1, String String2)
    {
        BestReviewsFragment BestReviewsFragment3 = new BestReviewsFragment();
        Bundle Bundle4 = new Bundle();

        Bundle4.putString( "args_book_id", String1 );
        Bundle4.putString( "args_book_title", String2 );
        BestReviewsFragment3.setArguments( Bundle4 );
        return BestReviewsFragment3;
    }

    static void a(BestReviewsFragment BestReviewsFragment1, BookReview BookReview2)
    {
        View View3 = BestReviewsFragment1.getLayoutInflater( null ).inflate( 2130903269, (ViewGroup) BestReviewsFragment1.b, false );
        BestReviewsFragment$ViewHolder ViewHolder4 = new BestReviewsFragment$ViewHolder( BestReviewsFragment1, View3 );
        Author Author5 = BookReview2.author;

        ViewHolder4.avatar.setImageUrl( Author5.getScaleAvatar(), 2130837614 );
        ViewHolder4.user.setText( (CharSequence) Author5.getNickname() );
        ViewHolder4.lv.setText( (CharSequence) new StringBuilder( "lv." ).append( Author5.getLv() ).toString() );
        ViewHolder4.time.setVisibility( 8 );
        ViewHolder4.title.setText( (CharSequence) BookReview2.title );
        ViewHolder4.content.setText( (CharSequence) BookReview2.content );
        ViewHolder4.helpfulCount.setText( (CharSequence) new StringBuilder().append( BookReview2.helpful.getYes() ).toString() );
        ViewHolder4.container.setOnClickListener( (View$OnClickListener) new ag( BestReviewsFragment1, BookReview2 ) );
        if( BestReviewsFragment1.c )
        {
            String String7 = Author5.getGender();

            if( "male".equals( String7 ) )
            {
                ViewHolder4.avatarVerify.setVisibility( 0 );
                ViewHolder4.avatarVerify.setImageLevel( 2 );
            }
            else if( "female".equals( String7 ) )
            {
                ViewHolder4.avatarVerify.setVisibility( 0 );
                ViewHolder4.avatarVerify.setImageLevel( 3 );
            }
            else
            {
                ViewHolder4.avatarVerify.setVisibility( 0 );
                ViewHolder4.avatarVerify.setImageLevel( 4 );
            }
        }
        else
        {
            String String6 = Author5.getType();

            if( "official".equals( String6 ) )
            {
                ViewHolder4.avatarVerify.setVisibility( 0 );
                ViewHolder4.avatarVerify.setImageLevel( 0 );
            }
            else if( "doyen".equals( String6 ) )
            {
                ViewHolder4.avatarVerify.setVisibility( 0 );
                ViewHolder4.avatarVerify.setImageLevel( 1 );
            }
            else
                ViewHolder4.avatarVerify.setVisibility( 8 );
        }
        ViewHolder4.rating.setValue( BookReview2.rating );
        BestReviewsFragment1.b.addView( View3 );
    }

    static void b(BestReviewsFragment BestReviewsFragment1)
    {
        BestReviewsFragment1.a.findViewById( 2131493434 ).setOnClickListener( (View$OnClickListener) new af( BestReviewsFragment1 ) );
    }

    static void c(BestReviewsFragment BestReviewsFragment1)
    {
        BestReviewsFragment1.a.findViewById( 2131493432 ).setOnClickListener( (View$OnClickListener) new ae( BestReviewsFragment1 ) );
    }

    static void d(BestReviewsFragment BestReviewsFragment1)
    {
        View View2 = BestReviewsFragment1.getLayoutInflater( null ).inflate( 2130903234, (ViewGroup) BestReviewsFragment1.b, false );

        BestReviewsFragment1.b.addView( View2 );
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        ah ah2;
        String[] String_1darray3;

        super.onActivityCreated( Bundle1 );
        ah2 = new ah( this, (byte) 0 );
        String_1darray3 = new String[1];
        String_1darray3[0] = getArguments().getString( "args_book_id" );
        ah2.b( String_1darray3 );
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        a = LayoutInflater1.inflate( 2130903208, ViewGroup2, false );
        ButterKnife.inject( this, a );
        b = (LinearLayout) a.findViewById( 2131493435 );
        c = com.clilystudio.netbook.hpay100.a.a.r( a.getContext(), "community_user_gender_icon_toggle" );
        return a;
    }
}
