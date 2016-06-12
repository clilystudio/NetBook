
package com.clilystudio.netbook.util;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;

public final class ak {

    private float a = 1.0F;
    private float b = 1.0F;

    private static int a(Set Set1, Set Set2)
    {
        Object Object3 = new LinkedHashSet();

        ((Set) Object3).addAll( (Collection) Set1 );
        ((Set) Object3).removeAll( (Collection) Set2 );
        return ((Set) Object3).size();
    }

    public final float a(String String1, String String2)
    {
        int int3 = 0;
        Object Object4 = new LinkedHashSet();
        Object Object5 = new LinkedHashSet();
        Object Object6;
        int int9;
        int int10;
        int int11;

        if( String1 == null && String2 != null )
        {
            String String23 = String2.toUpperCase( Locale.US );

            while( int3 < String23.length() )
            {
                ((Set) Object5).add( Character.valueOf( String23.charAt( int3 ) ) );
                ++int3;
            }
        }
        else if( String1 != null && String2 == null )
        {
            String String21 = String1.toUpperCase( Locale.US );

            while( int3 < String21.length() )
            {
                ((Set) Object4).add( Character.valueOf( String21.charAt( int3 ) ) );
                ++int3;
            }
        }
        else if( String1 != null && String2 != null )
        {
            String String14 = String1.toUpperCase( Locale.US );
            String String15 = String2.toUpperCase( Locale.US );
            int int16 = 0;

            for( ;; )
            {
                int int17 = String15.length();
                int int18 = 0;

                if( int16 < int17 )
                {
                    ((Set) Object5).add( Character.valueOf( String15.charAt( int16 ) ) );
                    ++int16;
                }
                else
                {
                    while( int18 < String14.length() )
                    {
                        ((Set) Object4).add( Character.valueOf( String14.charAt( int18 ) ) );
                        ++int18;
                    }
                    break;
                }
            }
        }
        Object6 = new LinkedHashSet();
        if( ((Set) Object4).size() > ((Set) Object5).size() )
        {
            ((Set) Object6).addAll( (Collection) Object4 );
            ((Set) Object6).retainAll( (Collection) Object5 );
        }
        else
        {
            ((Set) Object6).addAll( (Collection) Object5 );
            ((Set) Object6).retainAll( (Collection) Object4 );
        }
        int9 = ((Set) Object6).size();
        int10 = a( (Set) Object4, (Set) Object5 );
        int11 = a( (Set) Object5, (Set) Object4 );
        return (float) int9 / ((float) int9 + a * (float) int10 + b * (float) int11);
    }
}
