
package com.clilystudio.netbook.reader;

import android.graphics.Canvas;
import android.text.Layout$Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import java.util.ArrayList;
import java.util.List;

public final class K {

    public K(Reader Reader1, bZ bZ2)
    {
        a = Reader1;
        b = bZ2;
    }

    private Reader a;
    private bZ b;

    static n a(K K1, ReaderChapter ReaderChapter2, int int3)
    {
        return n.a( K1, ReaderChapter2, int3 );
    }

    private void a(int int1, int int2, e e3, boolean boolean4, int int5)
    {
        a.a( int1, (e) new L( this, e3, int5, int2 ), false, boolean4 );
    }

    public final Reader a()
    {
        return a;
    }

    public final void a(int int1, int int2, e e3, boolean boolean4)
    {
        a( int1, int2, e3, true, 1 );
    }

    public final void a(int int1, e e2, boolean boolean3)
    {
        a( int1, -1, e2, boolean3, 2 );
    }

    public final void a(Reader Reader1)
    {
        a = Reader1;
    }

    public final void a(e e1)
    {
        a( a.k(), a.l(), e1, true, 0 );
    }

    public final void a(e e1, int int2)
    {
        ReaderChapter ReaderChapter3 = new ReaderChapter();

        ReaderChapter3.setStatus( int2 );
        e1.a( n.a( this, ReaderChapter3, 0 ) );
    }

    public final int[] a(String String1)
    {
        int int2 = 0;
        TextPaint TextPaint3 = new TextPaint();
        StaticLayout StaticLayout4;
        int int5;
        int int6;
        Object Object7;
        int int8;
        int int10;
        int[] int_1darray12;
        int int13;

        TextPaint3.setTextSize( (float) b.a );
        StaticLayout4 = new StaticLayout( (CharSequence) String1, TextPaint3, b.f, Layout$Alignment.ALIGN_NORMAL, 1.0F, (float) b.b, false );
        StaticLayout4.draw( new Canvas() );
        int5 = StaticLayout4.getLineCount();
        int6 = b.e;
        Object7 = new ArrayList();
        int8 = 0;
        do
        {
            int int9 = StaticLayout4.getLineForVertical( int8 );
            int int11;

            int10 = StaticLayout4.getLineForVertical( StaticLayout4.getLineTop( int9 ) + b.e );
            if( StaticLayout4.getLineBottom( int10 ) - StaticLayout4.getLineTop( int9 ) > int6 )
                --int10;
            int11 = StaticLayout4.getLineStart( int9 );
            if( String1.substring( int11, StaticLayout4.getLineEnd( int10 ) ).length() > 0 )
            {
                if( ((List) Object7).isEmpty() || int11 != ((Integer) ((List) Object7).get( -1 + ((List) Object7).size() )).intValue() )
                    ((List) Object7).add( Integer.valueOf( int11 ) );
                int8 = StaticLayout4.getLineBottom( int10 );
            }
        }
        while( int10 < int5 - 1 );
        int_1darray12 = new int[((List) Object7).size()];
        int13 = int_1darray12.length;
        while( int2 < int13 )
        {
            int_1darray12[int2] = ((Integer) ((List) Object7).get( int2 )).intValue();
            ++int2;
        }
        return int_1darray12;
    }

    public final void b(int int1, e e2, boolean boolean3)
    {
        a( int1, 0, e2, boolean3, 1 );
    }
}
