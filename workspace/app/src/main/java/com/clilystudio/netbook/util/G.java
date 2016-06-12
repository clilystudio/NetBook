
package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.InsideLinkType;

final class G {

    static final int[] a = new int[InsideLinkType.values().length];

    static 
    {
exit_point:
        {
            try
            {
                a[InsideLinkType.GAME.ordinal()] = 1;
            }
            catch( NoSuchFieldError NoSuchFieldError1 )
            {
            }
            try
            {
                a[InsideLinkType.POST.ordinal()] = 2;
            }
            catch( NoSuchFieldError NoSuchFieldError2 )
            {
            }
            try
            {
                a[InsideLinkType.LINK.ordinal()] = 3;
            }
            catch( NoSuchFieldError NoSuchFieldError3 )
            {
            }
            try
            {
                a[InsideLinkType.BOOK.ordinal()] = 4;
            }
            catch( NoSuchFieldError NoSuchFieldError4 )
            {
            }
            try
            {
                a[InsideLinkType.POST_HELP.ordinal()] = 5;
            }
            catch( NoSuchFieldError NoSuchFieldError5 )
            {
            }
            try
            {
                a[InsideLinkType.POST_REVIEW.ordinal()] = 6;
            }
            catch( NoSuchFieldError NoSuchFieldError6 )
            {
            }
            try
            {
                a[InsideLinkType.BOOKLIST.ordinal()] = 7;
            }
            catch( NoSuchFieldError NoSuchFieldError7 )
            {
                break exit_point;
            }
            return;
        }
    }
}
