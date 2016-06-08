package com.clilystudio.netbook.util.a;

import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkFactory;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class b {
    public static InsideLink a(String paramString) {
        Matcher localMatcher = Pattern.compile("(.+?):(.+)").matcher(paramString);
        if ((localMatcher.find()) && (localMatcher.groupCount() == 2))
            return InsideLinkFactory.create(localMatcher.group(1), localMatcher.group(2));
        throw new IllegalStateException("Type not found exception");
    }
}

