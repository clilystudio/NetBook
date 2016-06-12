
package com.clilystudio.netbook.reader;

import android.os.Bundle;
import com.clilystudio.netbook.api.ApiService;

public class ReaderWebPageFragment extends WebPageFragment {

    private int a;

    public static ReaderWebPageFragment a(int int1, String String2)
    {
        ReaderWebPageFragment ReaderWebPageFragment3 = new ReaderWebPageFragment();
        Bundle Bundle4 = new Bundle();

        Bundle4.putInt( "MODE", int1 );
        Bundle4.putString( "KEY", String2 );
        ReaderWebPageFragment3.setArguments( Bundle4 );
        return ReaderWebPageFragment3;
    }

    public static ReaderWebPageFragment a(int int1, String String2, int int3)
    {
        ReaderWebPageFragment ReaderWebPageFragment4 = new ReaderWebPageFragment();
        Bundle Bundle5 = new Bundle();

        Bundle5.putInt( "MODE", int1 );
        Bundle5.putString( "KEY", String2 );
        Bundle5.putInt( "CHAPTER_INDEX", int3 );
        ReaderWebPageFragment4.setArguments( Bundle5 );
        return ReaderWebPageFragment4;
    }

    public static ReaderWebPageFragment a(int int1, String String2, int int3, String String4)
    {
        ReaderWebPageFragment ReaderWebPageFragment5 = new ReaderWebPageFragment();
        Bundle Bundle6 = new Bundle();

        Bundle6.putInt( "MODE", int1 );
        Bundle6.putString( "KEY", String2 );
        Bundle6.putInt( "CHAPTER_INDEX", int3 );
        Bundle6.putString( "CHAPTER_URL", String4 );
        ReaderWebPageFragment5.setArguments( Bundle6 );
        return ReaderWebPageFragment5;
    }

    public static ReaderWebPageFragment a(int int1, String String2, String String3, String String4, String String5, String String6)
    {
        ReaderWebPageFragment ReaderWebPageFragment7 = new ReaderWebPageFragment();
        Bundle Bundle8 = new Bundle();

        Bundle8.putInt( "MODE", int1 );
        Bundle8.putString( "SG_MD", String2 );
        Bundle8.putString( "KEY", String3 );
        Bundle8.putString( "SG_CMD", String4 );
        Bundle8.putString( "CHAPTER_URL", String5 );
        Bundle8.putString( "SG_CHAPTER", String6 );
        ReaderWebPageFragment7.setArguments( Bundle8 );
        return ReaderWebPageFragment7;
    }

    protected final String a()
    {
        String String1;

        a = getArguments().getInt( "MODE" );
        String1 = getArguments().getString( "KEY" );
        com.clilystudio.netbook.api.b.a();
        com.clilystudio.netbook.api.b.b();
        switch( a )
        {
            case 5:
            default:
                return ApiService.Q( String1 );
            case 4:
                return ApiService.S( String1 );
            case 2:
                return ApiService.R( String1 );
            case 6:
                return ApiService.b( String1, getArguments().getInt( "CHAPTER_INDEX" ), getArguments().getString( "CHAPTER_URL" ) );
            case 7:
                return ApiService.a( getArguments().getString( "SG_MD" ), String1, getArguments().getString( "SG_CMD" ), getArguments().getString( "CHAPTER_URL" ), getArguments().getString( "SG_CHAPTER" ) );
            case 8:
                return ApiService.a( String1, getArguments().getInt( "CHAPTER_INDEX" ) );
            case 3:
                return ApiService.a( String1, getArguments().getInt( "CHAPTER_INDEX" ), getArguments().getString( "CHAPTER_URL" ) );
        }
    }
}
