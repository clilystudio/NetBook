package com.clilystudio.netbook.util.a;

import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkFactory;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class b {
    public static InsideLink a(String string) {
        Matcher matcher = Pattern.compile("(.+?):(.+)").matcher(string);
        if (matcher.find() && matcher.groupCount() == 2) {
            return InsideLinkFactory.create(matcher.group(1), matcher.group(2));
        }
        throw new IllegalStateException("Type not found exception");
    }
}
